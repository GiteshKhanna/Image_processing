A=imread('lena512color.tiff');
B=imgaussfilt(A,3,'FilterSize',[7,7]);

imshow(B);

H=fspecial('average',2);
B=imfilter(A,H);


K = ordfilt2(A,5,true(5)); %Median
L = ordfilt2(A,1,true(5)); %Minimum
M = ordfilt2(A,9,true(5)); %Maximum

imshow(M);
