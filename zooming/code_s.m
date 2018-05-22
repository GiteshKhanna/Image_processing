%Resizing, zooming, shrinking using Nearest neightbout algo

clear ;
clc ; 
a = imread('lena512color.tiff') ;
a = rgb2gray(a) ;
s = input('Input s: ') ;


[r,c]= size(a) 

new_r = floor(r*s) ;
new_c = floor(c*s) ;
img = zeros(new_r , new_c) ;

for i=1 : new_r
    for j=1 : new_c
        u = ceil(i/s) ;
        v = ceil(j/s) ;
        %fprintf('u: %i ,v: %i',u,v) ;
        img(i,j) = uint8(a(u,v)) ;
    end
end
        
disp(size(img)) ;
img = uint8(double(img)) ;
imwrite(img,'lena_resized.jpg') ;

imshow(img) ;
