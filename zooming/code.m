%Resizing, zooming, shrinking using Nearest neightbout algo

clear ;
clc ; 
a = imread('lena512color.tiff') ;
a = rgb2gray(a) ;
new_r = input('Enter new_r:');
new_c = input('Enter new_c:');
[r,c]= size(a) ;
img = zeros(new_r,new_c) ;
disp(size(a)) ;
s1 = double(new_r/r) ;
s2 = double(new_c/c) ;

for i=1 : new_r
    for j=1 : new_c
        u = ceil(i/s1) ;
        v = ceil(j/s2) ;
        %fprintf('u: %i ,v: %i',u,v) ;
        img(i,j) = uint8(a(u,v)) ;
    end
end
        
disp(size(img)) ;
img = uint8(double(img)) ;
imwrite(img,'lena_resized.jpg') ;

imshow(img) ;
