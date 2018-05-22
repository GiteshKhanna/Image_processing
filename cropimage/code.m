a = imread('lena512color.tiff') ;
a = rgb2gray(a) ;
r_begin = input('Enter r_begin');
r_end = input('Enter r_end') ;
c_begin = input('Enter c_begin');
c_end = input('Enter c_end') ;

[r,c]= size(a) ;
img = zeros(r_end-r_begin,c_end-c_begin);

for i = r_begin:r_end
    for j = c_begin : c_end
        img(i-r_begin+1,j-c_begin+1) = a(i,j) ;
    end
end

%img = a(100:300,200:400) ;

imwrite(img,'lena_cropped.jpg')
        


subplot(1,2,1),imshow(a) ;
subplot(1,2,2),imshow(uint8(img)) ;
