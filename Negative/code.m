a = imread('lena512color.tiff');
color_a = a ;
a = rgb2gray(a) ;
[r,c] = size(a) ;

b = 255- a ;
c = 255- color_a ; 


imwrite(b,'negative_lena.jpg')

subplot(1,3,1), imshow(a), title('Original') ;
subplot(1,3,2), imshow(b), title('bw/Negative');
subplot(1,3,3), imshow(c), title('Color/Negative');
size(b)
size(a)
     