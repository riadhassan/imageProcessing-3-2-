clc
clear all
close all
img=imread('trees.tif');
cim=double(img);
[r,c]=size(cim);
r1=2*r;
c1=2*c;
pim=zeros((r1),(c1));
kim=zeros((r1),(c1));

fim=fft2(cim);
[him,glpf]=hf(fim,15,1);
ifim1=ifft2(him);
subplot(2,3,1);imshow(img);title('Original image');
subplot(2,3,2);mesh(glpf);title('HF ');
subplot(2,3,3); imshow(mat2gray(abs(ifim1)));title('Homomorphic Filtering Cropped image');

        