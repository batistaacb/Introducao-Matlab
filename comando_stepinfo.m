clear ; clc ; close all
Num = 4 ;
Den = [1 2 4] ; % s^2 + 2*s + 4
Ys = tf(Num,Den) ;
S = stepinfo(Ys,'RiseTimeThreshold',[0.05 0.95],'SettlingTimeThreshold',0.02) ;
ts = S.SettlingTime  ;
t = linspace(0,1.2*ts,1000) ;
figure(1),step(Ys,t) ;
print('comando_stepinfo','-dpng')