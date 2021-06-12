clear ; clc
Num = 3.5 ;  % 3,5
Den = [15 1] ; % 15*s+1
a = 25 ; % atraso de 5 segundos
Gs = tf(Num,Den,'InputDelay',a) ;
step(Gs)
print('Atraso_tempo','-dpng')