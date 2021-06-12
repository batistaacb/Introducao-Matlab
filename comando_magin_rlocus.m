clear ; clc ; close all
Num = 1 ;
Den = conv([1 0],conv([1 5],[1  8])) ; % s(s + 5)(s + 8)
figure(1),rlocus(Num,Den) ;
print('comando_magin_rlocus','-dpng')
kcr = margin(Num,Den) ; % ganho critico
r = rlocus(Num,Den,kcr) ; % polos do sistema para o ganho critico
Re = real(r)/1e-5 ; % 
Ref = fix(Re) ;
fRezero = find(Ref == 0) ;
Im = imag(r(fRezero)) ;
w = Im(1) ; % frequencia no ponto do granho critico
Pcr = 2*pi/w ; % periodo critico