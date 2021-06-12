clear ; clc

%% Exercicio 01

X = [1 2 3 4 5] ; % 
% Insira o valor 10 ao final do vetor
Xa = [X 10] ;
% Apague o quinto elemento do vetor
Xb = X ;
Xb(5) = [] ;
% Atribua valor zero aos elementos das posições 2, 3 e 4
Xc = X ;
Xc(2:4) = 0 ;
%% Exercicio 2
X = [pi sin(pi) log(10)] ; % 1x3
Y = [10 31 1 -2 2];  % 1x5
Z = [X Y] ;

%% Exercicio 3
y = [6 10 8 10 3 5] ; % 1x6
z = [5 4 3 2 0] ; % 1x5
% Exercicio 3a
raiz_y = roots(y) ;
raiz_z = roots(z) ;
% Exercicio 3b
y_vezes_z = conv(y,z) ;
% Exercicio 3c
syms x
y_x = poly2sym(y) ;
diff_y = diff(y_x) ;
z_x = poly2sym(z) ;
diff_z = diff(z_x) ;
%% Exercicio 4
A = [
1   3   4   6   8   9 ;
2   3   4   9   1   3 ;
3   3   3   6   5   3 ;
8   8   7   9   9   2 ;
9   8   2   3   4   1 ;
1   1   3   8   7   9 ] ;
%
B = [
2   2   2   3   4   5 ;
9   0   0   1   2   3 ;
0   1   2   3   7   8 ;
1   9   2   3   5   6 ;
8   9   0   1   2   3 ;
4   2   3   4   5   5 ] ;

% (a) C = A+B
C_soma = A+B ;
% C = A*B
C_mult = A*B ;
% (b) C = A*B
C_somu = 10*A+5*B ;
% (d) C = A + B*i
C_comp = A + B*1j ;
%(e) C = A’
C_trans = A' ;
% (f) Determinante de A e B
det_A = det(A) ;
det_B = det(B) ;
% (g) Diagonal de A
diag_A = diag(A) ;

%% Exercicio 5
M = [3 3 3 2;
    4 3 2 1 ;
    3 7 9 5] ;
A = M(:,1:3) ;
b = M(:,end) ;
x = A\b ;

%% Exercicio 6
X = [.5 3.4 4 2.8 1.5] ;
Y = [.0 2.2 5 1.1 1.7] ;
Xp_v_Y = X.*Y ;
X_v_Yt = X*Y' ;
Xt_v_Y = X'*Y;
Yp_v_Y = Y.*Y ;
% 6a
seno_x = sin(X); % seno(x)
tangente_y = tan(Y) ; % tangente(y)
cosseno_x_y = cos(Xp_v_Y) ; % cosseno(x.*y)
% 6b
Ln = log(X) ; % log(x)
Log10 = log10(X_v_Yt) ; % log10(x*y’)
Log2 = log(Xt_v_Y)/log(2) ; % log2(x’*y)
% 6 c) ceil(x)
Ac = ceil(X) ; 
% 6 d) floor(y)
Ab = floor(Y) ;
% 6 e) round(x.*y)
Ap = round(Xp_v_Y) ;
% f) sqrt(x) + floor(y.*y)
f_6 = sqrt(X) + floor(Yp_v_Y) ;
% g) Verifique se abs(2+2i)=sqrt(8)
a = abs(2+2*1i) ;
s = sqrt(8) ;
if a == s
    disp('OK: abs(2+2i)=sqrt(8)')
else
    disp('NOK')
end

