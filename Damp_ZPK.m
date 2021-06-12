clear ; clc ; close all
%% Obtendo Função de Transferência : Técnica 1
Num = 1 ; % numerdador da função de transferencia
Den = [1 4 5] ; % s^2 + 4*s + 5
sys = tf(Num,Den) ; % função de transferencia
[wn,zeta,p] = damp(sys) ; % frequencia natural, coeficinte de amortecimento, polos
Mp = exp((-pi*zeta(1))/sqrt(1-zeta(1)^2)) ;
ts  = 4 / (zeta(1)*wn(1)) ; % tempo de acomodação
figure(1),step(sys) ; % resposta ao degrau
print('Damp_ZPK1','-dpng')
%% Obtendo Função de Transferência : Técnica 2
gain = 1 ; % ganho
zero = [] ; % zero
polo = [-2+1i -2-1i] ; % polos
sys2 = zpk(zero,polo,gain) ; % função de transferencia
figure(2),step(sys) ; % resposta ao degrau
print('Damp_ZPK2','-dpng')




