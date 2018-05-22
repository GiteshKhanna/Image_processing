a = imread('lena512color.tiff') ;
a = rgb2gray(a) ;
[r,c]= size(a) ;
img = zeros(r,c);

for i = 1 : r
    k = c ;
    for j = 1 : c
        img(i,k) = a(i,j) ;
        k = k - 1 ;
    end
end

img = uint8(img)
imwrite(img,'lena.jpg')
imshow(a);
imshow(img);
