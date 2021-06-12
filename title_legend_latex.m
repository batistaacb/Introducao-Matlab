clear ; clc
alpha = linspace(0,10,1000) ;
y = sin(alpha) ;
z = cos(alpha) ;
plot(alpha,y,'r'); hold on
plot(alpha,z,'b') ; hold off
legend('sin \alpha','cos \alpha','location','northeast')
title('')