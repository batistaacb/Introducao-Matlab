clear ; clc
Sobrenome = {'João';'Maria';'Joaquin';'Ana'} ;
Idade = [35;29;32;28] ; % idade
Peso = [74;65;68;51] ; % peso
Altura = [171;154;160;150] ; % altura
Press = [124 93;110 77;117 83;120 80] ; % pressão sanguínea
T = table(Idade,Peso,Altura,Press,'RowNames',Sobrenome) ;
writetable(T,'Tabela.xlsx')