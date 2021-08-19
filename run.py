import os
import argparse
import re
import datetime
from urllib import parse as urlparse
from PIL.ImageChops import offset
from matplotlib import colors

import numpy as np
from numpy.core.defchararray import title
from numpy.core.fromnumeric import mean, size
from skimage.metrics import structural_similarity 
from PIL import Image, ImageDraw, ImageFont
import pandas as pd

GIT_BASE_URL = 'https://github.com/plotly/ssim_baselines/blob/main/'

def save_results(path, name, ssim_map, montage, ssim_val):
	'''
	Utility fucntion to save all the outputs
	'''
	os.makedirs(path, exist_ok=True)

	#Make border on top for title
	def make_top_border(img, border_height):
		width, height = img.size
		new_width, new_height = width, height + border_height
		format = img.mode
		color = 255 if format == 'L' else (255,255,255)
		img_new = Image.new(format, (new_width, new_height), color=color)
		img_new.paste(img, (0,border_height))
		return img_new

	def get_text_pos(img, text, font, margin=5):
		width, height = img.size
		f_w, fh = font.getsize(text)

		new_img = make_top_border(img, 2*margin + fh)

		x = int(width/2 - f_w/2)
		return (x, margin), new_img

	font = ImageFont.truetype('arial', size=26)
	title = 'SSIM: {:.4f}'.format(ssim_val)

	
	text_pos, montage = get_text_pos(montage, title, font)
	montage_d = ImageDraw.Draw(montage)
	montage_d.text( text_pos, title, fill='black', font=font)

	text_pos, ssim_map = get_text_pos(ssim_map, title, font)
	ssim_d = ImageDraw.Draw(ssim_map)
	ssim_d.text(text_pos, title, fill='black', font=font)
	
	montage.save(os.path.join(path, name + '_montage.png'))
	ssim_map.save(os.path.join(path,name + '_ssim_map.png'))


def get_category(path):
	'''
	Returns category and sub-categories from a path
	'''
	assert len(path) > 0
	splits = path.split(os.path.sep)

	if len(splits) == 1:
		cat = splits[0]
		sub_cat = ""
	elif len(splits) == 2:
		cat = splits[1]
		sub_cat = ""
	elif len(splits) > 2:
		cat = splits[1]
		sub_cat = os.path.sep.join(splits[2:])
	
	return cat, sub_cat

def get_category_path(path):
	''''
	Returns relative path of category
	'''
	assert len(path) > 1
	splits = path.split(os.path.sep)

	if len(splits) == 2:
		cat_path = splits[0]
	elif len(splits) >= 3:
		cat_path = os.path.sep.join(splits[:2])

	return cat_path


def write_ssim_csv_html(path, sorted_ssim, save_dir):
	''''
	Writes a csv and html file containing ssim for each pair
	'''
	csv_path = os.path.join(path, 'ssim.csv')
	html_path = os.path.join(path, 'ssim.html')
	md_path = os.path.join(path, 'ssim.md')
	cat_html_path = os.path.join(path, 'category_mean.html')
	cat_md_path = os.path.join(path, 'category_mean.md')
	cat_csv_path = os.path.join(path, 'category_mean.csv')
	mean_ssim_path = os.path.join(path, 'mean_ssim.txt')
	
	data = pd.DataFrame(sorted_ssim,  columns=['Pair', 'SSIM', 'Category', 'Sub-Category', 'Timestamp'])
	
	
	#modifications for html and MD
	pairs = data.filter(['Pair'])

	def make_url(val):
		rel_url = save_dir + '/' + val + '_montage.png'
		rel_url = rel_url.replace(os.path.sep, '/')
		rel_url = urlparse.quote(rel_url)
		url = GIT_BASE_URL + rel_url
		url = url.replace(os.path.sep, '/')
		return url

	def make_clickable_html(url, val):
		val = val.replace(os.path.sep, '/')
		return '<a href="{}" rel="noopener noreferrer" target="_blank">{}</a>'.format(url,val)

	def make_clickable_md(url, val):
		val = val.replace(os.path.sep, '/')
		return '[{}]({})'.format(val,url)

	def make_clickable_csv(url):
		return '{}'.format(url)

	pairs['URL'] = pairs.apply(lambda x: make_url(x['Pair']), axis=1)

	#csv
	data['Pair'] = pairs.apply(lambda x: make_clickable_csv(x['URL']), axis=1)
	data.to_csv(csv_path, index=False)
	
	#html
	data['Pair'] = pairs.apply(lambda x: make_clickable_html(x['URL'], x['Pair']), axis=1)
	data.to_html(html_path, index=False)

	#markdown
	data['Pair'] = pairs.apply(lambda x: make_clickable_md(x['URL'], x['Pair']), axis=1)
	data.to_markdown(md_path, index=False)

	
	## MEAN calculation
	cat_mean = data.groupby('Category', as_index=False).mean()
	cat_mean.columns = ['Category', 'SSIM Mean']
	print("\n\nCategory-wise SSIM mean:")
	print(cat_mean)
	cat_mean.to_csv(cat_csv_path, index=False)

	#modifications for html and MD
	# pairs['cat_path'] = pairs.apply(lambda x: get_category_path(x['Pair']), axis=1)

	# def make_clickable_cat_html(val):
	# 	rel_url = save_dir + '/' + val
	# 	rel_url = rel_url.replace(os.path.sep, '/')
	# 	rel_url = urlparse.quote(rel_url)
	# 	url = GIT_BASE_URL + rel_url
		
	# 	# url = urlparse.quote(url)
	# 	return '<a href="{}" rel="noopener noreferrer" target="_blank">{}</a>'.format(url,val)

	# def make_clickable_cat_md(val):
	# 	rel_url = save_dir + '/' + val
	# 	rel_url = rel_url.replace(os.path.sep, '/')
	# 	rel_url = urlparse.quote(rel_url)
	# 	url = GIT_BASE_URL + rel_url
	# 	# url = urlparse.quote(url)
	# 	return '[{}({})'.format(url,val)
	
	# #html
	# cat_mean['Category'] = pairs.apply(lambda x: make_clickable_cat_html(x['cat_path']), axis=1)
	cat_mean.to_html(cat_html_path, index=False)

	#markdown
	# cat_mean['Category'] = pairs.apply(lambda x: make_clickable_cat_md(x['cat_path']), axis=1)
	cat_mean.to_markdown(cat_md_path, index=False)

	ssim_mean = data['SSIM'].mean()
	print("\n\nMean SSIM: {}".format(ssim_mean))
	with open(mean_ssim_path, 'w') as f:
		f.write('SSIM Mean: {}'.format(ssim_mean) )


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

def get_image_pairs(images, first_suffix='plotly', second_suffix='ggplot2', error_str='_ERROR_CRASH_'):
	''''
	Returns a list of tuple of all possible pair of images
	'''

	img_set = set(images)
	img_pairs = []
	for img in images:
		if img not in img_set:
			continue
		
		img_name, ext = os.path.splitext(img)
		if img_name.endswith(error_str):
			crash = True
			# img_name_err = img_name
			img_name = img_name.replace(error_str, '')
		else:
			crash = False

		prefix_suffix_list = img_name.rsplit('_', 1)
		
		if len(prefix_suffix_list) == 2:
			other_img = None
			prefix, suffix  = prefix_suffix_list[0], prefix_suffix_list[1]

			if suffix == first_suffix:
				other_img = prefix + '_' + second_suffix + ext
				other_img_err = prefix + '_' + second_suffix + error_str + ext
			# elif suffix == second_suffix:
			# 	other_img = prefix + '_' + first_suffix + ext
			# 	other_img_err = prefix + '_' + first_suffix  + error_str + ext
			else:
				#ensure that first suffix (plotly) is reference image
				continue
				
			
			if other_img is not None or other_img_err is not None:
				# if crash:
				# 	img = img_name_err
				if other_img is not None and  other_img in img_set:
					pass
				elif other_img_err is not None and  other_img_err in img_set:
					other_img = other_img_err
					crash = True
				
				img_pairs.append((img, other_img, crash))
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
	timestamps= []
	cats = []
	sub_cats = []
	
	for i, path in enumerate(subdirs):

		print("\nLooking into subdir {}...".format(path))
		image_names = [img for img in os.listdir(path) if re.match(exts, img, re.IGNORECASE)]

		image_pairs = get_image_pairs(image_names, args.suffix_list[0], args.suffix_list[1], args.error_str)

		print("Number of pairs found: {}".format(len(image_pairs)))

		cat, sub_cat = get_category(path)
		for j, pair in enumerate(image_pairs):
			crash = pair[2]
			pair = pair[:2]
			images = [Image.open(os.path.join(path, x)) for x in pair]

			montage = get_montage(images)
			if not crash:
				ssim_val, ssim_map = get_ssim(images[0], images[1], args.norm, args.force_resize)
			else:
				ssim_val = -1
				ssim_map = montage.copy()

			if ssim_val is not None and ssim_map is not None:
				if not crash:
					pair_prefix = pair[0].rsplit('_', 1)[0]
					
					valid_pairs.append(os.path.join(path, pair_prefix))
					ssim_vals.append(ssim_val)
					dt = datetime.datetime.now()
					timestamps.append(dt.strftime('%Y-%m-%d %H:%M:%S'))
					cats.append(cat)
					sub_cats.append(sub_cat)
				
				else:
					pair_prefix = os.path.splitext(pair[0])[0]
					
					#n order to remove frist suffix 
					if pair_prefix.endswith(args.error_str):
						pair_prefix = pair_prefix.replace(args.error_str, '')
					
					pair_prefix = pair_prefix.rsplit('_', 1)[0] + args.error_str
					
				save_results(os.path.join(args.save_dir, path), pair_prefix, ssim_map, montage, ssim_val)
				print("Pair: {}, SSIM: {}".format(pair, ssim_val))
			else:
				print("Aspect ratio does not match for images at path \"{}\" for pair \"{}\". Use --force argumnet to calcualte ssim anyways". format(path, pair))
		print("Subdir {} done!".format(path))
	
	# Write CSV and HTML Table
	sorted_ssim = [(pair, ssim, cat, sub_cat, timestamp) for ssim, pair, timestamp, cat, sub_cat in sorted(zip(ssim_vals, valid_pairs, timestamps, cats, sub_cats))]

	if len(sorted_ssim) > 0:
		write_ssim_csv_html(args.save_dir, sorted_ssim, args.save_dir)
	else:
		with open(os.path.join(args.save_dir, 'failure.txt'), 'w') as f:
			f.write("There were no valid image pairs found")


if __name__ == '__main__':
	parser = argparse.ArgumentParser(description='SSIM Generator')

	parser.add_argument("--root-dir", default='ggplot2', type=str,
						help="Path for root directory containing all the sub-dirs. Default: ggplot2")
	parser.add_argument("--save-dir", default='out_ggplot2', type=str,
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
	parser.add_argument('--suffix-list', default=['plotly', 'ggplot2'], nargs='+',
							help="List of two suffix to find image pairs. Default: ['plotly', 'ggplot2']")
	parser.add_argument("--error-str", default='_ERROR_CRASH_', type=str,
						help="Suffix at the end of filename in case of error. Default: _ERROR_CRASH_")
	
	
	args = parser.parse_args()

	main(args)
