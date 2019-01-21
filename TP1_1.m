close all; 
clear all; 

Img=imread('cellules.jpg');
% figure(1);
% imshow(Img);

Imgray=rgb2gray(Img);
% figure(2);
% imshow(Imgray);

figure(3);
H=imhist(Imgray,256);
bar(H);

[V,s]=var_inter(H);

figure(5);
BW=im2bw(Imgray,s/255);
imshow(BW);
% function []=var_inter(H)
% N=sum(H);%taille de l'image=nombre de pixel= L*l
% SommeH=0;
% 
% %moyenne de H
% for j=1:length(H)
%     SommeH=SommeH+(j-1)*H(j);
% end 
% MH=(1/N)*SommeH;
% V=zeros(256,1);
% for i=1:256
%     P0=sum(H(1:i))/N;
%     P1=1-P0;
%     %moyenne M0 et M1
%     SommeP0=0;
%     SommeP1=0;
%     for n=1:i
%         SommeP0=SommeP0+(n-1)*H(n); 
%     end 
%     for n=i+1:256
%         SommeP1=SommeP1+(n-1)*H(n);
%     end
%     M0= SommeP0/sum(H(1:i));
%     M1= SommeP1/sum(H(i+1:256));
%     
%     V(i)=P0*(MH-M0)^2+P1*(MH-M1)^2;
% end 
% V
% %s=[1:1:256];
% figure(4);
% plot(V);
% end 