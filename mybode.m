function mybode(num, den, iXmin , iXmax )
close all
ag  =  5 ; % ajuste de bordas em torno da assintota
af = 10 ;
if nargin == 2
    iXmin = -3 ;
    iXmax = 3 ;
elseif nargin == 0 % condicao de teste
    num = [1 10] ;
    den = [1 1] ;
    iXmin = -3 ;
    iXmax = 3 ;  
end
N = 10000 ;
w = logspace(iXmin , iXmax , N) ;
sys = tf(num , den) ;
[mag,fase] = bode(sys,w) ;
mag = reshape(mag ,[1 N]) ;
fase = reshape(fase ,[1 N]) ;
%% Magnitude dB
ym = 20*log10(mag) ;
subplot(2,1,1),semilogx(w,ym,'b') ; hold on
xlabel('Frequência [w]') ; ylabel('Ganho [dB]'); title('Módulo') ;
MinY = min(ym) - max(abs(ym)) / ag - 2 ;
MaxY = max(ym) + max(abs(ym)) / ag + 2 ;
xlim([10^iXmin   10^iXmax])
ylim([MinY MaxY])
xlim([10^iXmin   10^iXmax])
%% Fase em Graus
yf = fase ;
subplot(2,1,2),semilogx(w,yf,'b') ; hold on
xlabel('Frequência [w]') ; ylabel('Fase [graus]'); title('Fase') ;
MinY = min(yf) - max(abs(yf)) / af - 2 ;
MaxY = max(yf) + max(abs(yf)) / af + 2 ;
xlim([10^iXmin   10^iXmax])
ylim([MinY MaxY])
grid on
%% Chamando Bode Assintotica
bode_as(num, den)
hold off
end