a = imread('lena512color.tiff');
[r,c,f] = size(a) ;
b = zeros(r,c);

%b=sum(a,3)/3; Direct vectorized way
for i=1:r
    for j =1:c
        b(i,j)=sum(a(i,j,:))/3;
    end
end


b = uint8(floor(double(b))) ;
disp(size(b)) ;
imwrite(b,'lena2gray.jpg') ;

subplot(1,2,1), imshow(a), title('Original');
subplot(1,2,2), imshow(uint8(b)), title('Gray');
