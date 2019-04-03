function [res,h]= ilpf(im,thresh)
[r,c]=size(im);
d0=thresh;
d=zeros(r,c);
h=zeros(r,c);
for i=1:r
    for j=1:c
     d(i,j)=  sqrt( (i-(r/2))^2 + (j-(c/2))^2);
    end
end
h=(d<=d0);

for i=1:r
    for j=1:c
    res(i,j)=(h(i,j))*im(i,j);
    end
end
end
