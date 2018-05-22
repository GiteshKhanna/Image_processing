a = imread('lena512color.tiff');
t = input('Enter threshold') ;
a = rgb2gray(a) ;
[r,c] = size(a) ;
b = zeros(r,c);

for i= 1:r
    for j = 1:c
        if(a(i,j)>t)
            b(i,j)=1;
        else
            b(i,j)=0;
        end
    end
end

imwrite(b,'bw_lena.tiff')
subplot(1,2,1), imshow(uint8(a)), title('Original')
subplot(1,2,2), imshow(logical(b)), title('Binary');
size(b)
size(a)
     