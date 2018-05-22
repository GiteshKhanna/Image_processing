a = imread('lena512color.tiff') ;

[r,c]= size(a) ;

b = imresize(a,[800,800]);
imwrite(b,'Resized_lena.jpg')


subplot(1,2,1),imshow(a) ;
subplot(1,2,2),imshow(uint8(b)) ;
