# ssim_baselines
Baselines for ggplot2 and MATLAB® figure conversion and SSIM comparison

This program takes a directory containing sub-directories with image pairs, and computes SSIM between respective pairs. The program logs as well as saves the results.

## Requirements:
1. Pyhton > =3.6
2. Numpy
3. Scikit-image
4. PIL

## How to run:
to execute this program, you can execute following command from terminal:

```
python run.py --root-dir $PATH_TO_ROOT_DIRECTORY --save-dir $PATH_TO_SAVE_DIRECTORY
```

Exmaple:
```
python run.py --root-dir ggplot2 --save-dir out_ggplot2
```

### Arguments

1. --roor-dir (default: data): Path to root directory containing all the sub-folders with image pairs.
2. --save-dir (default: output): Path where to save the output images and results
3. --img-types (default: ['png', 'jpg']): A lsit of image types (extensions) to look for in each sub-direcotry. You can choose any number of values from ['jpg','jpeg','png','tiff','bmp','gif']
4. --force-resize (default: False): SBy default, the program ignores the image pairs who does not have matching aspect ratios, as resizing such images will distort the images. Set this argument if you want to force resize all images irrespective of their aspect ratio.
5. --norm (default: 'abs'): How to normalize negative vlaues in the ssim map. 'abs' will take absolute values, while scale will resecale the range between [0, 1]'

## Directory Structure:
The program expects follwing directory structure in the path specified by --root-dir argument:

```
root
|___ subdir1
|     |___ image1_plotly.png
|     |___ image1_ggplot2.png
|     |___ image_x_plotly.png
|     |___ image_x_ggplot2.png
|     |___ subdir11
|     |    |___ abc_plotly.png
|     |    |___ abc_ggplotly.png
|     |    |___ ...
|     |___ ...
|___ subdir2
|     |___ image123_plotly.png
|     |___ image123_ggplot2.png
|     |___ image_xyz_plotly.png
|     |___ image_xyz_ggplot2.png
|     |___ ...
|___ ...
```

## Outputs:

Output directory structure is something like this:
```
output
|___ subdir1
|     |___ image1_montage.png
|     |___ image1_ssim_map.png
|     |___ imagex_montage.png
|     |___ imagex_ssim_map.png
|     |___ subdir11
|     |    |___ abc_montage.png
|     |    |___ abc_ssim_map.png
|     |    |___ ...
|     |___ ...
|___ subdir2
|     |___ image123_montage.png
|     |___ image123_ssim_map.png
|___ ...
|___ ssim.csv
|___ ssim.html
```

### Notes on SSIM Values and Maps:

1. SSIM value in scikit-image is supposed to have the same results as in the original Matlab implementation by Wang et al in "Image quality assessment: From error visibility to structural similarity". 
These values are slightly **different** from the built-in Matlab implementation of SSIM

2. Scikit-image has a range of [-1, 1] for pixel level SSIM. Hence the results have some negative values as well in the SSIM map. I have applied two different normalization. Absolute, where signs of negative values are changed t positives. Rescale, where ssim map is normalized in the range between [0, 1] by doing (1 + SSIM) / 2. I am not sure how Matlab internally handles it, if you have better ideas, I would be happy to implement. 

