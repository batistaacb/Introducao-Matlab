clear ; close all ; clc
load SouthAmericaPopulations populations countries
total = sum(populations);
percent = populations/total;

%Criando Pizza Explodindo os itens 3 e 6
figure
explode = [0 0 1 0 0 1 0 0];
pie(percent, explode, countries)

% Adicionando Titulo
title('Populcaoes de Paises da America do Sul')
print('PieChart_2D','-dpng')
