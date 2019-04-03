clc
clear all
close all
img=imread('cameraman.tif');
HighKernel = [ -1 -1 -1; -1 10 -1; -1 -1 -1 ];
high_pass_img = conv2(HighKernel, img);
subplot(2,2,1);
imshow(img)
title('Source image');
subplot(2,2,2);
imshow(high_pass_img);
title('High pass filtered image');
% Lowpass filter
LowKernel = [ 1 1 1; 1 -10 1; 1 1 1 ];
low_pass_img = conv2(LowKernel,img);
subplot(2,2,3)
imshow(img);
title('Source image');
subplot(2,2,4);
imshow(low_pass_img);
title('Low pass filtered image');