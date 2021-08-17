import os
import argparse
import re
import csv

import numpy as np
from skimage.metrics import structural_similarity 
from PIL import Image
import pandas


def save_results(path, name, ssim_map, montage):
	'''
	Utility fucntion to save all the outputs
	'''
	os.makedirs(path, exist_ok=True)

	montage.save(os.path.join(path, name + '_montage.png'))
	ssim_map.save(os.path.join(path,name + '_ssim_map.png'))


def write_ssim_csv_html(path, sorted_pair_ssim):
	''''
	Writes a csv and html file containing ssim for each pair
	'''
	csv_path = os.path.join(path, 'ssim.csv')
	html_path = os.path.join(path, 'ssim.html')
	with open(csv_path, 'w') as f:
		csv_writer = csv.writer(f)
		header = ['Pair', 'SSIM']
		csv_writer.writerow(header)
		csv_writer.writerows(sorted_pair_ssim)
	
	ssim_csv = pandas.read_csv(csv_path)
	ssim_csv.to_html(html_path)

	print("\nCSV file write to path {}.".format(csv_path))
	print("HTML file write to path {}.".format(html_path))


def resize_images(img1, img2, force=False):
	
	'''
	Resize the two images to match the size of the smaller one.
	If "force" is False, then it will only resize if images have same aspect ratio.
	Otherwise return None 
	'''

	w1, h1 = img1.size
	w2, h2 = img2.size

	if not force:
		ratio_orig = h1/w1
		ratio_comp = h2/w2

		if round(ratio_orig, 2) != round(ratio_comp, 2):
			return None, None, False
	
	if h1 == h2 and w1 ==w2:
		return img1, img2, True 
	elif h1 > h2:
		resized1 = img1.resize((w2, h2), Image.ANTIALIAS)
		return resized1, img2, True
	elif h2 > h1:
		resized2 = img2.resize((w1, h1), Image.ANTIALIAS)
		return img1, resized2, True


def get_ssim(img1, img2, norm='abs', force_resize=False):
	'''
	Inputs:
	img1: PIL image
	img2: PIL image
	force_resize: Whether to force resize the images or not, if aspect ration does not match

	Returns:
	SSIM index value bw img1 and img2, and SSIM map
	'''
	gray_img1 = img1.convert('L')
	gray_img2 = img2.convert('L')

	gray_img1, gray_img2, success = resize_images(
								gray_img1, gray_img2, force=force_resize)
	
	if success:

		gray_img1 = np.array(gray_img1)
		gray_img2 = np.array(gray_img2)


		ssim_val, ssim_map = structural_similarity(gray_img1, gray_img2, 
									full=True, gaussian_weights=True, sigma=1.5,
									data_range=gray_img2.max() - gray_img2.min())
		
		
		if norm == 'scale':
			ssim_map = ((1 + ssim_map) /2 *255).astype(np.uint8)
		elif norm == 'abs':
			ssim_map = (np.abs(ssim_map)*255).astype(np.uint8)

		ssim_map = Image.fromarray(ssim_map, 'L')
		return ssim_val, ssim_map
	else:
		return None, None


def get_montage(images):
	'''
	Inputs:
	images: A list of images
	
	Returns:
	Montage of all the images in the list concatenated horizontally
	'''

	widths, heights = zip(*(i.size for i in images))
	total_width = sum(widths)
	max_height = max(heights)

	montage = Image.new('RGB', (total_width, max_height))

	x_offset = 0
	for im in images:
		montage.paste(im, (x_offset,0))
		x_offset += im.size[0]
	
	return montage

def get_image_pairs(images, plotly_sffix='plotly', ggplot_suffix='ggplot2'):
	''''
	Returns a list of tuple of all possible pair of images
	'''

	img_set = set(images)
	img_pairs = []
	for img in images:
		if img not in img_set:
			continue
		img_name, ext = os.path.splitext(img)
		
		prefix_suffix_list = img_name.rsplit('_', 1)
		
		if len(prefix_suffix_list) == 2:
			other_img = None
			prefix, suffix  = prefix_suffix_list[0], prefix_suffix_list[1]
			if suffix == plotly_sffix:
				other_img = prefix + '_' + ggplot_suffix + ext
			elif suffix == ggplot_suffix:
				other_img = prefix + '_' + plotly_sffix + ext

			if other_img is not None and other_img in img_set:
				img_pairs.append((img, other_img))
				img_set.remove(img)
				img_set.remove(other_img)
	
	return img_pairs


def main(args):

	subdirs = [entry[0] for entry in os.walk(args.root_dir)]
	if not len(subdirs) > 0:
		print("There is no directory at the given path {}".format(args.root_dir))
		exit()
	else:
		print("{} sub-directories found. Running SSIM...".format(len(subdirs)))

	exts = '.*.(' + '|'.join(args.img_types) + ')'
	os.makedirs(args.save_dir, exist_ok=True) 

	valid_pairs =[]
	ssim_vals = []
	for path in subdirs:
		print("\nLooking into subdir {}...".format(path))
		image_names = [img for img in os.listdir(path) if re.match(exts, img, re.IGNORECASE)]

		image_pairs = get_image_pairs(image_names)

		print("Number of pairs found: {}".format(len(image_pairs)))

		for pair in image_pairs:
			images = [Image.open(os.path.join(path, x)) for x in pair]

			montage = get_montage(images)
			ssim_val, ssim_map = get_ssim(images[0], images[1], args.norm, args.force_resize)

			if ssim_val is not None and ssim_map is not None:
				pair_prefix = pair[0].rsplit('_')[0]
				save_results(os.path.join(args.save_dir, path), pair_prefix, ssim_map, montage)
				
				valid_pairs.append(os.path.join(path, pair_prefix))
				ssim_vals.append(ssim_val)
				
				print("Pair: {}, SSIM: {}".format(pair, ssim_val))
			else:
				print("Aspect ratio does not match for images at path \"{}\" for pair \"{}\". Use --force argumnet to calcualte ssim anyways". format(path, pair))
		print("Subdir {} done!".format(path))
	
	# Write CSV and HTML Table
	sorted_pair_ssim = [[pair, ssim] for ssim, pair in sorted(zip(ssim_vals, valid_pairs))]
	write_ssim_csv_html(args.save_dir, sorted_pair_ssim)


if __name__ == '__main__':
	parser = argparse.ArgumentParser(description='SSIM Generator')

	parser.add_argument("--root-dir", default='data', type=str,
						help="Path for root directory containing all the sub-dirs. Default: ./data")
	parser.add_argument("--save-dir", default='output', type=str,
						help="Path where montage and ssim maps are saved")
	parser.add_argument('--img-types', default=['png', 'jpg'], nargs='+',
							help="List of extensions for images. Default: ['png', 'jpg']",
							choices=['jpg','jpeg','png','tiff','bmp','gif'])
	parser.add_argument('--force-resize', '--force_resize', action='store_true',
						help='Use this argument to calcualte SSIM for image pairs whose aspect ratios do not match.'\
							'By default, the program ignores such pairs.')
	parser.add_argument('--norm', default='abs', choices=['abs', 'scale'],
						help='How to normalize negative vlaues in the ssim map.'\
							'abs will take absolute values, while scale will resecale the range between [0,1]')
	
	args = parser.parse_args()

	main(args)
