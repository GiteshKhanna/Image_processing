a=imread('lena512color.tiff');
a=rgb2gray(a) ;
[r,c] = size(a) ;


b = zeros(r,c) ;

for i = 1:8
    bit = bitget(a,i) ;
    subplot(2,4,i),imshow(logical(bit))
end
