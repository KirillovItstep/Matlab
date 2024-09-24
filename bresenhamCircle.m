function [X,Y]=bresenhamCircle(xc,yc,r)
% function [X,Y]=bresenham_circle2(r)
% return coordinates of circle points by Bresenham' algo
% center is (0,0)
X=[]; Y=[];
x = r; y = 0;
xChange = 1 - r*2;
yChange = 0;
radiusError = 0;
dd=2; % 2 is for circle, 10 makes diamond, 0.1 makes square
while x >= y
    X=[X,x,y,-x,-y,-x,-y,x,y];
    Y=[Y,y,x,y,x,-y,-x,-y,-x];
    y=y+1;
    radiusError =radiusError + yChange;
    yChange =yChange + dd;
    if (radiusError *dd) + xChange > 0
        x=x-1;
        radiusError =radiusError+ xChange;
        xChange =xChange + dd;
    end
    
end
X=X+xc;
Y=Y+yc;
end