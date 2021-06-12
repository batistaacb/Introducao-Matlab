clear ; clc ; close all
t = (-1:0.001:1)' ; % 
Imp = t == 0 ; % impulso
Uni = t > 0 ; % degrau unitario
Ram = t.*Uni ; % rampa 
Qua = t.^2.*Uni ; % parabola
figure(1),plot(t,[Imp]) ;
% print('GerandoSinais1','-dpng')
%% 
tau = 2; % constante de tempo
[u,t] = gensig("square",tau);
figure(2),plot(t,u,'-r') ;
% print('GerandoSinais2','-dpng')




