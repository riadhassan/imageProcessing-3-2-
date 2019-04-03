function [res,d]= lf(im,thresh)
[r,c]=size(im);
d0=thresh;
d=zeros(r,c);
h=zeros(r,c);
for i=1:r
    for j=1:c
     d(i,j)=  -4*pi^2*( (i-(r/2))^2 + (j-(c/2))^2);
    end
end
for i=1:r
    for j=1:c
    res(i,j)=(d(i,j))*im(i,j);
    end
end
end
