clear ;
clc;

a=imread('lena512color.tiff');
a = rgb2gray(a) ;
img=double(a);


[r,c]=size(a);
fin = zeros(r,c) ;

for i=1:r
    for j=1:c
    fin(i,j)=power(img(i,j),1.5);
  
    end
end


imshow(uint8(fin));