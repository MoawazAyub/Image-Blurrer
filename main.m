% main code depends on padding.m and convolve.m

img = imread('cameraman.tif');
[dx dy] = size(img);
%rng(0,'twister');

img=double(img)./256.0;

originalImg = img;

a = sqrt(0.2);
b = 0;

Noise = a.*randn(dx,dy) + b;


img = img + Noise;

NoisyImg = img;

figure,imshow(img);
%figure,imagesc(img);colormap gray; colorbar,title 'IMg1';



globalVariance = var(img(:));
globalMean     = mean(img(:));

%--------------------------- this is man 
NHOOD = 7;
padFactor = floor(NHOOD/2);

%--------------------------------padding
for i = 1 :1:padFactor
MATRIXB = NoisyImg;
padding;
MATRIXB = TEMP;
NoisyImg = TEMP;
end
%----------------------------------
MATRIXC = MATRIXB;
for I1 = 1+padFactor : 1 : dx

	for J1 =1+padFactor : 1 : dy
	
	convolve2;
	%globalVariance/VAR
	%MATRIXB(I1,J1) = MEAN;
	%MATRIXB(I1,J1) = MATRIXB(I1,J1) - ((globalVariance/VAR)*(MATRIXB(I1,J1) - MEAN));
	MATRIXB1(I1,J1) = MATRIXB(I1,J1) - ((globalVariance*(MATRIXB(I1,J1) - MEAN))/VAR);
	MATRIXC1(I1,J1) = MEAN;
	end

end

figure,imshow(MATRIXC1);
figure,imshow(MATRIXB1);