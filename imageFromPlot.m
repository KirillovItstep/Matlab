%Draw an image using plot functions
clc; clear all; close all;

height = 300; width = 300;
image=zeros(height,width,3,'uint8');
image = imcomplement(image);

f=figure('Visible','on');
imshow(image);

axis off; 
    set(f,'units','points','position',[1 1 width height]) % set the screen size and position
    set(f,'paperunits','points','paperposition',[1 1 width height]) % set size and position for printing
    set(gca,'units','normalized','position',[0 0 1 1]) % make sure axis fills entire figure
    hold on;
    text(10,10,'text');
    
    line([20,120],[20,20],'Color','g');
    
    x = 20:2:120;
    y = 30;
    plot(x,y,'Color','r');
    
    x = 20:0.1:220;
    y=sin(x/5)*50+100;
    plot(x,y,'Color','b');

    rectangle('Position',[100,100,150,150]);
    rectangle('Position',[10,10,30,50],'Curvature',1);
    rectangle('Position',[10,70,30,50],'EdgeColor','r');
    rectangle('Position',[10,130,30,50],'FaceColor','r','EdgeColor','b',...
    'LineWidth',3);

    %Insert an arrow
    q = quiver(100,100,150,100,'r','MaxHeadSize',0.1);
    set(q, 'Marker','.') ;
    set(q, 'LineWidth',3) ;
    
    %Insert an image
    axes('pos',[0 0 .5 .3]);
    imshow('pear.jpg');
    
    hold off;
    
    print(f, '-r72','-dbmp','image.bmp'); %Save image to file '-dbmp','-djpeg100'
    
    im = imread('image.bmp');
    %figure,imshow(im);


