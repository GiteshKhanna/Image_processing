a = imread('lena512color.tiff') ;
a = rgb2gray(a) ;
[r,c]= size(a) ;

constant_c = input('Input c:')

img = constant_c*log(double(1+a)) ;
        

img = uint8(img)
imwrite(img,'lena.jpg')

subplot(1,2,1), imshow(uint8(a)) ;
subplot(1,2,2), imshow(uint8(img)) ;
