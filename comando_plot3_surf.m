clear ; clc ; close all
 t = 0:pi/100:10*pi ;
 x = sin(t) ;
 y = cos(t) ; 
 plot3(x,y,t)

x = 0:0.1:10 ;
y = 0 :0.1:5 ;
[X,Y] = meshgrid(x,y);
Z = cos(X) + sin(Y) ;
surf(X,Y,Z)