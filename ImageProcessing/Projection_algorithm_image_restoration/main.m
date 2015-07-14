clear all
Image=imread('Lena.bmp');lbd=55;t=0.18;
%imshow(Image);
f=imnoise(Image,'salt & pepper',0.05);  
f=double(f);
figure
imshow(uint8(f));
%imagesc(f); axis image; axis off; colormap(gray);
u=proj(f,t,lbd);
figure
imshow(uint8(u));
%imagesc(u); axis image; axis off; colormap(gray);
%imwrite(Lena,'2.png','png');

