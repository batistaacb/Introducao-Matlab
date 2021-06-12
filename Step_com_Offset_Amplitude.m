clear ; clc ; close all
T0 = 0 ; % tempo inicial
Tf = 10 ; % tempo final
Np = 1000 ; % número de pontos
Num = 1 ; % numerador da função de transferência
Den = [1 1] ; % denominador da função de transferência
Gs = tf(Num,Den) ; % função de transferência
t = linspace(T0,Tf,Np) ;
opt = stepDataOptions('StepAmplitude',2,'InputOffset',1) ;
figure(1),step(Gs,opt,t)
print('Step_com_Offset_Amplitude','-dpng');