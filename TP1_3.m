close all; 
clear all; 


Image=imread('ngc2175.jpg');
figure(1);
imshow(Image);
D0=3;
n=2;

[H,W]=size(Image);
[U,V]=meshgrid(-W/2+1/2:W/2-1/2,-H/2+1/2:H/2-1/2);
D=[sqrt(U.^2+V.^2)];
H=1./(1+(D0./D).^(2*n));
figure(2);
plot3(U,V,H);

figure(3);
TF_image=fftshift(fft2(Image));
TF_image_filtre=(TF_image.*H);
Image2=(ifft2(ifftshift(TF_image_filtre)));
imagesc(abs(Image2)),colormap gray;
