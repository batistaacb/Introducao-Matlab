clear ; clc ; close all
x = linspace(0,4,1000) ; % dominio
y = x.^2 ; % parabola
plot(x,y,'LineStyle','-','Color',[1 0 0],'LineWidth',1) ; hold off
xlim([0 3]) ; % limitando a caixa de plotagem em X
ylim([0 9]) ; % limitando a caixa de plotagem em Y
ax = gca; % ativando os eixos
c = ax.Color; % ativar comando para mudar a cor de fundo da plotagem
ax.Color = 'white'; % fundo na cor branca 
ax.GridAlpha = 0.1 ; % intensidade da cor da grade 0 < alpha <= 1
grid on % ativando a grade
set(gca,'xdir','reverse','ydir','reverse')
% xticks([]) % remove os dados do eixo X
% yticks([]) % remove os dados do eixo Y
title('Eixo X e Y reversos')
print('plot2D_elaborado','-dpng')
