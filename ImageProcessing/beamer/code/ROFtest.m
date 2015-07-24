clear all
eps=0.000001;
I=50;lambda=0.029; % coefficient of the TV norm (needs to be adapted for each image) 
u0=imread('Lena1.bmp');
figure
imagesc(u0); axis image; axis off; colormap(gray);
image=ROF(u0,I,eps,lambda);
figure 
imagesc(image); axis image; axis off; colormap(gray);
