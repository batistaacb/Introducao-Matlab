function x = Escada(A , b)
Len = length(b);    % Numero de linhas igual a dimensão do vetor b.
I = eye(Len);       % Matriz identidade para obter a inversa
Mx = [A b] ;        % Matriz aumentada para resolução do sistema
Mi = [A I] ;        % Matriz aumentada para obter
%% Obtendo a matriz diagonal superior
for b = 1:(Len-1)                % Laço interage o pivoteamento com o escalonamento.
    for a = (b+1):Len                  %
        L = -Mx(a,b)/Mx(b,b);             % Obetendo o termo que vai escalonar a linha.
        disp(['L' num2str(a) ' = L' num2str(a) ' + ' num2str(L) ' * L' num2str(b)])       
        Mx(a,:) = Mx(a,:) +  L*Mx(b,:)   % Escalonando a linha da matriz
        Mi(a,:) = Mi(a,:) +  L*Mi(b,:) ;  % Escalonando a linha da matriz
    end
end
%% Dividindo a diagonal principal
disp('')
disp('Dividir a Diagonal Principal')
disp('')
for c = 1:Len
    disp(['L' num2str(c) ' = L' num2str(c) ' / ' num2str(Mx(c,c))])
    Mx(c,:) = Mx(c,:)/Mx(c,c) % resolvendo o sistema ...
    Mi(c,:) = Mi(c,:)/Mi(c,c); % obtendo a inversa ...
end
%% Obtendo a matriz diagonal inferior
Lin = Len - 1 ;
disp('')
disp('Forma Escada')
disp('')
for m = Len:-1:2  % percorrendo todas as colunas ate a
    for n = Lin:-1:1 % percorrendo todas as linhas desde a penultima
        U = -Mx(n,m) ;
        disp(['L' num2str(n) ' = L' num2str(n) ' + ' num2str(U) ' * L' num2str(m)])
        Mx(n,:) = Mx(n,:) + U*Mx(Lin+1,:) 
        Mi(n,:) = Mi(n,:) + U*Mi(Lin+1,:) ;
    end
    Lin = Lin - 1 ;
end
x = Mx(:,end) ;


