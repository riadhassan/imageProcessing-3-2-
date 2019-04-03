clc
clear all
close all
img=imread('pout.tif');
subplot(121),imshow(img),title('Original Image');
subplot(122),imhist(img),title('Original Image Histogram');