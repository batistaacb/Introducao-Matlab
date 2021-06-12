clear ; clc ; close all
T0 = 0 ; % tempo inicial
Tf = 10 ; % tempo final
Np = 2000 ; % numero de pontos 
%% Definindo dominio e funções de entrada
t = linspace(T0,Tf,Np) ; % tempo
m = 2 ;  % coeficiente de inclinação da reta
u_r = m*t; % rampa
a = 1 ; % concavidade da parabola
u_p = a*t.^2 ; % parabola
w = 4 ; % frequencia
u_s = sin(w*t) ; % senoide
%% Função de Transferência de Sistema Dinâmico
k = 1 ; % ganho
Num = k ;  % k
Den = [1 2 1] ; % s^2 + 2*s + 1
Gs = tf(Num,Den) ; % função de transferência
%% Respostas
gt_r = lsim(Gs,u_r,t) ; % resposta a entrada rampa
figure(1),
plot(t,u_r,'-b') ; hold on 
plot(t,gt_r,'-r') ; hold off
grid on
legend('rampa','resposta a rampa','location','best')
min_r = 1.05*min([min(u_r) min(gt_r)]) ;
max_r = 1.05*max([max(u_r) max(gt_r)]) ;
axis([T0 Tf min_r max_r]) ;
print('comando_lsim1','-dpng')
%
gt_p = lsim(Gs,u_p,t) ; % resposta a parabola
figure(2),
plot(t,u_p,'-b') ; hold on 
plot(t,gt_p,'-r') ; hold off
grid on
legend('parabola','resposta a parabola','location','best')
min_p = 1.05*min([min(u_p) min(gt_p)]) ;
max_p = 1.05*max([max(u_p) max(gt_p)]) ;
axis([T0 Tf min_p max_p]) ;
print('comando_lsim2','-dpng')
%
gt_s = lsim(Gs,u_s,t) ; % resposta a 
figure(3),
plot(t,u_s,'-b') ; hold on 
plot(t,gt_s,'-r') ; hold off
grid on
legend('senoide','resposta senoide','location','best')
min_s = 1.05*min([min(u_s) min(gt_s)]) ;
max_s = 1.05*max([max(u_s) max(gt_s)]) ;
axis([T0 Tf min_s max_s]) ;
print('comando_lsim3','-dpng')



