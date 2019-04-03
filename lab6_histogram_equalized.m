clc
clear all
close all
img=imread('pout.tif');
subplot(221),imshow(img),title('Original Image');
subplot(222),imhist(img),title('Original Image Histogram');
subplot(223),imshow(histeq(img)),title('Equalized Image');
subplot(224),imhist(histeq(img)),title('Equalized Image Histogram');