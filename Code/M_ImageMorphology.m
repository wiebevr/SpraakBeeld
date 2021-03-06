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
                'string', 'Image Morphology', ...
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
                [left 0.7 w h],'string','Dilation (Struct. element)',...
                'Callback', 'IM_DilationStrucElem');  
            
u2 = uicontrol('Style','push','units','normalized', 'pos',...
                [left 0.55 w h],'string','Opening and closing',...
                'Callback', 'IM_OpeningAndClosing');  
            
u3 = uicontrol('Style','push','units','normalized', 'pos',...
                [left 0.5 w h],'string','Hit or miss transform',...
                'Callback', 'IM_HitOrMiss');
            
u4 = uicontrol('Style','push','units','normalized', 'pos',...
                [left 0.4 w h],'string','Connectivity (#objects)',...
                'Callback', 'IM_Connectivity'); 
            
 
%Align them all            
align([u1 u2 u3 u4],'Left','Fixed', 10);

  