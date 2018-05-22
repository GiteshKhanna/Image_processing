clear ;
clc ; 

a = imread('lena512color.tiff') ;
a = rgb2gray(a) ;
[r,c]= size(a) ;

b = zeros(r,c);
freq_b = zeros(256,1) ;
freq = zeros(256,1) ;
L  = 256 - 1 ;

%Finding frequency of each pixel
for i = 1:r
    for j = 1:c
        freq(a(i,j)+1)= freq(a(i,j)+1)+ 1 ;
    end
end


prob =  freq/(r*c) ;
temp = L * prob ;
c_prob = temp ;


%Calculating cumulative probability
for i=1:256
    c_prob(i) = c_prob(i) + sum(temp(1:i-1)) ;
end

c_prob = round(c_prob+1) ;

for i = 1:256
        freq_b(c_prob(i)) = freq_b(c_prob(i)) + freq(i) ;
end


subplot(2,2,1),plot(freq) ;
subplot(2,2,2),plot(freq_b) ;


%making original image

for i = 1:r
    for j = 1:c
        f = a(i,j);
        g=c_prob(f+1);
        b(i,j)=g;
    end
end

subplot(2,2,3) ,imshow(a)  ;
subplot(2,2,4) ,imshow(uint8(b))





        


