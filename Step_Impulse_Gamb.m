clear ; clc ; close all
t = linspace(0,10,1000) ;
Num = 1 ;Den = [1 1];  % s^2 + 2*s + 1
sys = tf(Num,Den) ;
ys = step(sys,t) ; % resposta ao degrau unitário R(s) = 1/s
yi = impulse(sys,t) ; % resposta ao impulso
figure(1),plot(t,ys,'-r') ; hold on
plot(t,yi,'-b') ; hold off ; grid on
legend('respota ao degrau','resposta ao impulso','Location','best')
print('Step_Impulse_Gamb1','-dpng')
%% Resposta a Rampa
NumR = 1 ; DenR = [1 2 1 0] ; % s^3 + 2*s^2 + s
sysR = tf(NumR,DenR) ; % 1 / (s^3 + 2*s^2 + s)
yr = step(sysR,t) ; % aplicando degrau para obter a resposta a rampa
figure(2),plot(t,yr) ; hold on
plot(t,t) ; hold off ;grid on
legend('resposta a rampa','rampa unitária','Location','best')
print('Step_Impulse_Gamb2','-dpng')
%% 
u = sin(4*t) ;
Isin = tf(4,[1 0 16]) ; % sin(4*t)
Osin = sys*Isin ; % convoluindo a entrada com a entrada senoidal
ysin = impulse(Osin,t) ; % resposta ao seno empregando o impuslo
figure(3),plot(t,u,'-r') ; hold on
plot(t,ysin,'-b') ; hold off ; grid on
legend('entrada senoidal','resposta a entrada senoidal','Location','best')
print('Step_Impulse_Gamb3','-dpng')
%%



