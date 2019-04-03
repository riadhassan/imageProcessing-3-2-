clc
clear all
close all
img=imread('cameraman.tif');
subplot(121),imshow(img),title('original image');
neg_img=255-img;
subplot(122),imshow(neg_img),title('Negative Image');