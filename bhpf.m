function [res,h] = bhpf(im,thresh,n)
[r,c]=size(im);
d0=thresh;
d=zeros(r,c);
h=zeros(r,c);
for i=1:r
    for j=1:c
     d(i,j)=  sqrt( (i-(r/2))^2 + (j-(c/2))^2);
    end
end
for i=1:r
    for j=1:c
      h(i,j)=  1 / (1+ (d0/d(i,j))^(2*n) ) ;
    end
end
for i=1:r
    for j=1:c
    res(i,j)=(h(i,j))*im(i,j);
    end
end