clear ; clc  
% para faça
ini = 0 ; % ponto de inicio do laço
fim = 4 ; % ponto final do laço
pas = .05 ; % passo da iteração
Np = (fim-ini)/pas ; % numero de pontos
M = zeros(Np,2) ; % estrutura de armazenamento de dados
c = 0 ; % contador de iterações
for x = ini:pas:fim
    c = c + 1 ; % contador
    y = x^2 ; % f(x)
    M(c,1) = x ; % armazenando x
    M(c,2) = y ; % armazenando f(x)
end
plot(M(:,1),M(:,2)) ; % plotando X vs. Y
save dados_teste.mat M % salvando os dados