clear ; clc
syms x
a = 1 ;
b = 4 ;
c = 3 ;
eq = a*x^2 + b*x + c == 0 ;
solve(eq,x)