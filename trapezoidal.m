clear ; clc
Ti = 0 ; % tempo inicial
Pa = 0.5 ; % passo
Tf = 3 ; % tempo final
t=Ti:Pa:Tf;
y=trapmf(t,[.5 1 2 2.5]);
figure(1),plot (t,y);
axis ([0 max(t) -0.5 1.5]);
xlabel ('Tempo');
ylabel ('Amplitude');
title ('Trapezoidal');
grid on  
% 
T = [t t+Tf t+2*Tf] ;
Y = [y y y] ;
figure(2),plot(T,Y)
axis ([0 max(T) -0.5 1.5]);
grid on 
