%% Stéganalyse pour détection de LSB replacement

clc;
clear all;
close all;

imageAAnalyser = 'images_SteganalyseLSB/imageSteganographiee.jpg'

x = imread(imageAAnalyser);         % image à analyser
x = rgb2gray(x);

figure(1),imshow(x);title('1. Image a analyser', 'Interpreter','Latex')

[n,p] = size(x);

y = zeros(n,p);

for i=1:n
    for j=1:p
        if (mod(x(i,j),2)~=0)
            y(i,j) = 255;
        end
    end
end

figure(2),imshow(y);title('2. Image analys\''ee', 'Interpreter','Latex')