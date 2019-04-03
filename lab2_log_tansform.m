clc
clear all
close all
img=imread('cameraman.tif');
c=input('Enter constant: ');
trans_img=c*log(1+im2double(img));
subplot(121),imshow(img),title('original image');
subplot(122),imshow(trans_img),title('Log Transform Image');
