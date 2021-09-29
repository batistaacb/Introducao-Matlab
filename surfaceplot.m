% function surfaceplot
figure(1),
fsurf(@(u,v)sin(pi*u).*sin(pi*u).*cos(v), ...
    @(u,v)sin(pi*u).*sin(pi*u).*sin(v), ...
    @(u,v)u, [-1 1 0 2*pi])
% Adicionar Rotulos e Titulos
xlabel('x') ; ylabel('y'); zlabel('z')
title({'x = sin(\pi*u)*sin(\pi*u)*cos(v)','y = sin(\pi*u)*sin(\pi*u)*sin(v)',  'z = u'})

% Mude o Angulo de Visão para Figura
view(135,15)

% end