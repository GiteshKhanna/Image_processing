a = imread('lena512color.tiff') ;
a = rgb2gray(a) ;
[r,c]= size(a) ;

constant_c = 0.2
gamma = [0.1,0.2,0.3]

img1 = constant_c*(power(double(a),1.5))   ;
img2 = constant_c*(power(double(a),0.9))   ;
img3 = constant_c*(power(double(a),0.6))   ;



subplot(1,3,1), imshow(uint8(img1)), title('C:0.2 , G:1.5');
subplot(1,3,2), imshow(uint8(img2)), title('C:0.2 , G:0.9');
subplot(1,3,3), imshow(uint8(img3)), title('C:0.2 , G:0.6');
