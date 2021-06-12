clear ; clc 
x0 = -1.5 ; % chute inicial
Nmax = 10 ; %  numero maximo de iterações
n = 1 ; % contador de iterações
x(n) = x0 ;  % condição inicial
tol = 1e-4 ; % tolerância para o erro
err = tol + 1 ; % assume erro inicial maior que a tolerância
% Funcao
f = @(x) x^2 + 4*x + 4 ; % f(x)
df = @(x) 2*x + 4 ; % df(x) / dx
while (n < Nmax) && (err > tol) % laço enquanto faça
    xn = x(n) ;
    x(n+1) = xn - f(xn)/df(xn) ;
    err = abs(x(n+1) - xn) ;
    x(n) = x(n+1) ;
    n = n + 1 ; 
end
X = x(n) ;
disp(['Solução do Sistema' num2str(X)])