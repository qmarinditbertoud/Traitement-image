close all; 
clear all; 

Img=imread('blood.jpg');
Imgray=rgb2gray(Img);
[H,W]=size(Imgray);
sobelx=[-1,-2,-1;0,0,0;1,2,1];
sobely=[-1,0,1;-2,0,2;-1,0,1];
gi=double(imfilter(Imgray,sobelx));
gj=double(imfilter(Imgray,sobely));
G=sqrt(double(gi.^2+gj.^2));

figure(1);
subplot(141);
imshow(gi);

subplot(142);
imshow(gj);

subplot(143);
imshow(G);
Bruit=imnoise(Imgray,'gaussian',0,0.01);

subplot(144);
imshow(H);
for j=1:H
    for i=1:W
        if G(i,j) == 0
            Gi_n(i,j) = 0;
            Gj_n(i,j) = 0;
        else
           Gi_n=gi./G;
           Gj_n=gj./G;  
        end
    end
end


for y = 0 : H
    for x=0:W
      if   Gi_n==0
          alpha=pi/2;
      end
      alpha=atan(Gi_n
      m1_i=(d*cos(alpha)
    end 
    
end 
