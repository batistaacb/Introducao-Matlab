clear ; clc
x = 0:1e-4:7 ; % dominio
y = x.^2 ; % parabola
z = 2*x+4 ; % reta com coeficiente angular positivo
w = sin(x) ; % senoide
k = -x ; % reta com coeficiente angular negativo
figure(1), 
subplot(2,2,1),plot(x,y,'-r');  % x^2
subplot(2,2,2),plot(x,z,'-g') ; % 2*x+4
subplot(2,2,3),plot(x,w,'-b') ;  % sen(x)
subplot(2,2,4),plot(x,k,'-k') ;  % -x
print('Subplot_Simples','-dpng')