clear ; clc
Ndate = 10 ;
[OilDate,serieOil] = fred2read('OVXCLS') ; % Oleo
% comprimento dos dados
ComOl = length(serieOil) ;
% data para numero
Oil_Date = datetime(OilDate,'ConvertFrom','datenum') ;
%
p_ol = round(linspace(1,ComOl,Ndate)) ;
% Datas Numero para String
D_ol = cellstr(Oil_Date(p_ol)) ;

% COmando Eixo
figure(1),bar(serieOil,'r')
ax = gca ; 
ax.XTick = p_ol ;
ax.XTickLabel = D_ol ;
xtickangle(90)
print('barplot_fred2read','-dpng')