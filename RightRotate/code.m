a = imread('lena512color.tiff') ;
a = rgb2gray(a) ;
[r,c]= size(a) ;
img = zeros(r,c)

k = r ;
for i =1 : r
    for j = 1 : c
        img(j,k) = a(i,j) ;
        
    end
    k = k - 1 ;
end

imwrite(img,'lena_right.jpg')
        


subplot(1,2,1),imshow(a) ;
subplot(1,2,2),imshow(uint8(img)) ;
