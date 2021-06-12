clear ; clc
% 5*x + y = 3
% x - y = 1
A = [5  1;
     1 -1] ; % L2 = L2 - L1/5
b = [3 ;
     1] ;

x = Escada(A , b);
Err = A*x - b ;