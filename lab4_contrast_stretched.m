clc
clear all
close all
img=imread('cameraman.tif');
subplot(221),imshow(img),title('Original Image');
subplot(222),imhist(img),title('Original Image Histogram');
stretched_img=imadjust(img,[0.3,0.6],[0.0,1.0]);
subplot(223),imshow(stretched_img),title('Contrast Stretched Image');
subplot(224),imhist(stretched_img),title('Contrast Stretched Image Histogram');
