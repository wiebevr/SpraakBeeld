clear all;
%Bitplane Slicing
plane = 8;
foto = imread('../ImageLIB/cameraman.tif');

figure(9), clf;
for i=0:7
    subplot(2,4,i + 1);
    imshow(bit_plane_slicing(foto, i)),title(['Bit-Plane ' int2str(i)]);    
end     
            