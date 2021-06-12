clear ; clc
syms x y z
f = y*x.^2 ;
I = int(f,y) ; 
% Derivada
df = diff(f,x) ;