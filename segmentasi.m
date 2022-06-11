clc; clear; close all;
 
I = imread('R.jpeg');

J = rgb2gray(I);

m = zeros(size(J,1),size(J,2));
m(111:231,123:243) = 1;

seg = activecontour(J,m,350);

figure,
subplot(2,2,1);imshow(I);title('Citra asli');
subplot(2,2,2);imshow(m);title('Initial masking');
subplot(2,2,3);imshow(seg);title('Citra biner hasil segmentasi')