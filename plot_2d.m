clear ; clc ;close all
x0 = 0 ; % valor inicial de X
xf = 2*pi ; % valor final de Y
x = linspace(x0,xf,1000) ; % matriz unidimensional 
y1 = sin(x) ; % função 1
y2 = cos(x) ; % função 2
y3 = y1 + y2 ; % função 3
%
figure(1),
plot(x,y1,'Color',[1 0 0]) ; hold on
plot(x,y2,'Color',[0 1 0]) ; hold on
plot(x,y3,'Color',[0 0 1]) ; hold off
legend('sin(x)','cos(x)','sin(x)+cos(x)','Location','best') ;
axis([x0 xf -3.5 3.5])
print('plot_2d','-dpng');