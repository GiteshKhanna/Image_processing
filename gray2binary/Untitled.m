a = imread('lena512color.tiff') ;
b = rgb2gray(imread('lena512color.tiff')) ;
c = b/2 ;
imshow(a);
imshow(b);
imshow(c);

figure, imshow(c) ;
imshow(double(c)) ;

