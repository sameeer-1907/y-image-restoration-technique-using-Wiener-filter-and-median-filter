originalImage = imread('3dBoxBg.jpg');
grayImage = rgb2gray(originalImage);
noisyImage = imnoise(grayImage, 'gaussian', 0, 0.01);
figure;
subplot(1, 2, 1);
imshow(grayImage);
title('Original Grayscale Image');
subplot(1, 2, 2);
imshow(noisyImage);
title('Image with Gaussian Noise');
wienerFiltered = wiener2(noisyImage, [5, 5]);
figure;
imshow(wienerFiltered);
title('Image after Wiener Filter');
medianFiltered = medfilt2(noisyImage, [3, 3]);
figure;
imshow(medianFiltered);
title('Image after Median Filter');