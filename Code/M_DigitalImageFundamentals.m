clf, close all;
% Create axes for placing a background 
f = figure;
ha = axes('units','normalized', 'position',[0 0 1 1]);
uistack(ha,'top');
% Read the background and scale it 
I=imread('../ImageLIB/back.jpg');
hi = imagesc(I);

% Display the axes
set(ha,'handlevisibility','off', 'visible','off');

% Make the title
uicontrol( 'Style','Text',...
                'BackgroundColor',[.0 .0 .0],...
                'ForegroundColor',[.3 .55 .71],...
                'units', 'normalized', ...                
                'position', [0 0.85 1 0.13],...
                'string', 'Digital Image Fundamentals', ...
                'HorizontalAlignment', 'center', ...
                'fontsize', 30, ...
                'Fontweight', 'bold', ...
                'HandleVisibility', 'off');

 % Defining parameters
 left = 0.35;
 w = 0.3;
 h = 0.08;
            
% Place the buttons       
u1 = uicontrol('Style','push','units','normalized', 'pos',...
                [left 0.7 w h],'string','Original Image',...
                'ForegroundColor',[1 .0 .0],...
                'Fontweight', 'bold', ...
                'Callback', 'DIF_Orig');  
            
u2 = uicontrol('Style','push','units','normalized', 'pos',...
                [left 0.55 w h],'string','Cropped Image',...
                'Callback', 'DIF_Crop');  
            
u3 = uicontrol('Style','push','units','normalized', 'pos',...
                [left 0.5 w h],'string','4 bit quantized image',...
                'Callback', 'DIF_Quantized');
            
u4 = uicontrol('Style','push','units','normalized', 'pos',...
                [left 0.4 w h],'string','Zero order hold zoom',...
                'Callback', 'DIF_ZeroOrderZoom'); 
            
u5 = uicontrol('Style','push','units','normalized', 'pos',...
                [left 0.3 w h],'string','First order hold zoom with conv. mask',...
                'Callback', 'DIF_FirstOrderZoomConv');  
            
u6 = uicontrol('Style','push','units','normalized', 'pos',...
                [left 0.18 w h],'string','Inverse image',...
                'Callback', 'DIF_Inverse');  
%Align them all            
align([u1 u2 u3 u4 u5 u6],'Left','Fixed', 10);

  