a = imread('lena512color.tiff') ;
a = rgb2gray(a) ;
[r,c]= size(a) ;

b = transpose(a);

subplot(1,2,1),imshow(a) ;
subplot(1,2,2),imshow(uint8(b)) ;
