% Control panel for all the Image Color Processing files 
% Made by Jasper Vercammen

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
                'string', 'Image Color Processing', ...
                'HorizontalAlignment', 'center', ...
                'fontsize', 30, ...
                'Fontweight', 'bold', ...
                'HandleVisibility', 'off');

 % Defining parameters
 left = 0.1;
 w = 0.3;
 h = 0.08;
            
% Place the buttons       
u1 = uicontrol('Style','push','units','normalized', 'pos',...
                [left 0.7 w h],'string','Original Image',...
                'ForegroundColor',[1 .0 .0],...
                'Fontweight', 'bold', ...
                'Callback', 'ICP_Original');  
            
u2 = uicontrol('Style','push','units','normalized', 'pos',...
                [left 0.55 w h],'string','Extract R & G & B images',...
                'Callback', 'ICP_RandGandB');  
            
u3 = uicontrol('Style','push','units','normalized', 'pos',...
                [left 0.5 w h],'string','Compose RG, RB and GB',...
                'Callback', 'ICP_RGandRBandGB');
            
u4 = uicontrol('Style','push','units','normalized', 'pos',...
                [left 0.4 w h],'string','Individual R-G-B-plane processing',...
                'Callback', 'ICP_RGBplaneProcessing'); 
            
u5 = uicontrol('Style','push','units','normalized', 'pos',...
                [left 0.3 w h],'string','Spatial Filtering of color images',...
                'Callback', 'ICP_');  
             
%Align them all            
align([u1 u2 u3 u4 u5],'Left','Fixed', 10);

%Align right
left = 0.63;

% Place the buttons on the right       
%u11 = uicontrol('Style','push','units','normalized', 'pos',...
%                [left 0.7 w h],'string','Histogram shrinking',...
%                'ForegroundColor',[.1 .5 .0],...
%                'Callback', 'DIE_HistogramShrinking');  
            
u12 = uicontrol('Style','push','units','normalized', 'pos',...
                [left 0.55 w h],'string','Converting RGB to CMY images',...
                'ForegroundColor',[.1 .5 .0],...
                'Callback', 'ICP_RGBtoCMY');  
            
u13 = uicontrol('Style','push','units','normalized', 'pos',...
                [left 0.5 w h],'string','Converting RGB to HSV images',...
                'ForegroundColor',[.1 .5 .0],...
                'Callback', 'ICP_RGBtoHSV');
            
u14 = uicontrol('Style','push','units','normalized', 'pos',...
                [left 0.4 w h],'string','Converting RGB to HSI images',...
                'ForegroundColor',[.1 .1 .5],...
                'Callback', 'ICP_RGBtoHSI'); 

u15 = uicontrol('Style','push','units','normalized', 'pos',...
                [left 0.3 w h],'string','Individual H-S-I-plane processing',...
                'ForegroundColor',[.1 .1 .5],...
                'Callback', 'ICP_HSIplaneProcessing');  

            
align([ u12 u13 u14 u15],'Right','Fixed', 10);

 % Align just one more at the bottom
 left = .25;
 w = 0.5;
 h = 0.08;

u21 = uicontrol('Style','push','units','normalized', 'pos',...
                [left 0.17 w h],'string','Pseudocolor mapping using itensity slicing',...
                'ForegroundColor',[.5 .0 .5],...
                'Callback', 'ICP_PseudoColorMapping');  
            
align(u21,'Right','Fixed', 10);
  