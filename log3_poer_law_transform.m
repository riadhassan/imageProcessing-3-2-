clc
clear all
close all
img=imread('cameraman.tif');
c=input('Enter constant c: ');
gamma=input('Enter constant gamma: ');
trans_img=c*log(1+im2double(img).^gamma);
subplot(121),imshow(img),title('original image');
subplot(122),imshow(trans_img),title('Log Transform Image');