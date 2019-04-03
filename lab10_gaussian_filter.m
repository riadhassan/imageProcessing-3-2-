clc
clear all
close all
img=imread('cameraman.tif');
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
[him1,glpf]=glp(fim,10);
[him2,ghpf]=ghp(fim,10);
ifim1=ifft2(him1);
ifim2=ifft2(him2);
 
for i=1:r1
    for j=1:c1
   ifim1(i,j)=ifim1(i,j)*((-1)^(i+j));
   ifim2(i,j)=ifim2(i,j)*((-1)^(i+j));
    end
end
for i=1:r
    for j=1:c
   rim1(i,j)=ifim1(i,j);
   rim2(i,j)=ifim2(i,j);
    end
end
subplot(2,3,1);imshow(img);title('Original image');
subplot(2,3,2);mesh(glpf);title('GLPF ');
subplot(2,3,3);imshow(uint8(rim1));title('Low pass Filtering Cropped image');
subplot(2,3,4);imshow(img);title('Original image');
subplot(2,3,5);mesh(ghpf);title('GHPF ');
subplot(2,3,6);imshow(uint8(rim2));title('High pass Filtering Cropped image');

        