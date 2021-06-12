clear ; clc ; close all
Num = 1 ;
Den = conv([1 0],conv([1 5],[1  8])) ; % s(s + 5)(s + 8)
figure(1),bode(Num,Den)
print('bcomando_Bode_margin','-dpng')
figure(2),margin(Num,Den)
print('comando_bode_Margin','-dpng')

