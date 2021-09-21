function verticalbarplot(x , y , z)
if nargin == 3
    interna(x , y , z)
elseif nargin == 1 || nargin == 2
    disp('Erro : Número de Argumentos Insuficientes ')
else % exemplo
    x = [38556 24472 14556 18060 19549 8122 28541 7880 3283 4135 7953 1884];
    y = [20178 23536 34561 37395 36072 32237 18597 9408 6005 6268 8963 13882];
    z = [37140 32169 37533 39103 33244 23269 16737 5411 3435 6052 12825 23332];
    interna(x , y , z)
end

% Create a vertical bar chart using the bar function
    function interna(x , y , z)
        figure
        bar(1:12, [x' y' z'], 1)
        % Set the axis limits
        axis tight
        set(gca, 'XTick', 1:12)
        % Add title and axis labels
        title('Plotagem de Barras Verticais')
        xlabel('Domínio')
        ylabel('Imagem')
        % Add a legend
        legend('X', 'Y', 'Z')
    end
print('VerticalBarPlot','-dpng')
end
