clear ; clc
a = 0 ;
b = 1 ;
f = @(x) x.^2 ;
I = integral(f,a,b) 
%%
n = 100 ;
h = (b-a)/n ;
s = 0 ; % soma
for k = 1:n
    x = a + (k-0.5)*h ;
    s = s + h*f(x) ;
end
s