clear all;
%Bitplane Slicing
plane = 8;
foto = imread('..\ImageLIB\cameraman.tif');

foto_double = double(foto);
[r,c] = size(foto_double);

% for i=1:plane
%     planes(:,:,i) = bitget(uint8(foto),i);
% end

plane1 = zeros(r, c);
plane2 = zeros(r, c);
plane3 = zeros(r, c);
plane4 = zeros(r, c);
plane5 = zeros(r, c);
plane6 = zeros(r, c);
plane7 = zeros(r, c);
plane8 = zeros(r, c);

for i = 1:r
    for j = 1:c
        if foto(i,j) > 127
            plane8(i,j) = 255;
            foto(i,j) = foto(i,j) - 128;
        end
        if foto(i,j) > 63
            plane7(i,j) = 255;
            foto(i,j) = foto(i,j) - 64;
        end
        if foto(i,j) > 31
            plane6(i,j) = 255;
            foto(i,j) = foto(i,j) - 32;
        end
        if foto(i,j) > 15
            plane5(i,j) = 255;
            foto(i,j) = foto(i,j) - 16;
        end
        if foto(i,j) > 7
            plane4(i,j) = 255;
            foto(i,j) = foto(i,j) - 8;
        end
        if foto(i,j) > 3
            plane3(i,j) = 255;
            foto(i,j) = foto(i,j) - 4;
        end
        if foto(i,j) > 1
            plane2(i,j) = 255;
            foto(i,j) = foto(i,j) - 2;
        end
        if foto(i,j) > 0
            plane1(i,j) = 255;
        end
    end
end


figure(9), clf;
subplot(2,4,1);
imshow(plane1),title('Bit-Plane 0');
subplot(2,4,2);
imshow(plane2),title('Bit-Plane 1');
subplot(2,4,3);
imshow(plane3),title('Bit-Plane 2');
subplot(2,4,4);
imshow(plane4),title('Bit-Plane 3');
subplot(2,4,5);
imshow(plane5),title('Bit-Plane 4');
subplot(2,4,6);
imshow(plane6),title('Bit-Plane 5');
subplot(2,4,7);
imshow(plane7),title('Bit-Plane 6');
subplot(2,4,8);
imshow(plane8),title('Bit-Plane 7');            
            