a_in = imread('..\ImageLIB\small-squares.tif');

b1 = [ 0 0 0
       0 1 1
       0 1 0 ];

b2 = [ 1 1 1
       1 0 0
       1 0 0 ];
   
a_in_HitMis = bwhitmiss(a_in,b1,b2);



figure(8), clf;
subplot(1,2,1);
imshow(a_in);
title('Original image');


subplot(1,2,2);
imshow(a_in_HitMis);
title('Pixel locations that have only east and south neighbors');