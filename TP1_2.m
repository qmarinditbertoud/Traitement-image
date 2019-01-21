close all; 
clear all; 

Image=imread('phare_bruit_ps.png');
figure(1);
imshow(Image);

figure(2);
B=ordfilt2(Image,13,ones(5:5));
imshow(B);

figure(3);
B=ordfilt2(Image,5,ones(3:3));
imshow(B);

figure(4);
B=ordfilt2(Image,8,ones(4:4));
imshow(B);
