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
for i=1:r
    for j=1:c
        pim(i,j)=cim(i,j);
    end
end
for i=1:r
    for j=1:c
   kim(i,j)=pim(i,j)*((-1)^(i+j));
    end
end
fim=fft2(kim);
[him,glpf]=lf(fim,40);
ifim1=ifft2(him);
 
for i=1:r1
    for j=1:c1
   ifim1(i,j)=ifim1(i,j)*((-1)^(i+j));
    end
end
for i=1:r
    for j=1:c
   rim1(i,j)=ifim1(i,j);
    end
end
subplot(2,3,1);imshow(img);title('Original image');
subplot(2,3,2);mesh(glpf);title('LF ');
subplot(2,3,3); imshow(mat2gray(abs(rim1)));title('Laplacian Filtering Cropped image');

        