clear ; clc
x = randn(1,1000)' ; 
histfit(x)
pd = fitdist(x,'Normal') ;
me = pd.mu ; 
st = pd.sigma ; 
title(['\mu = ' num2str(me) '  ' '\sigma = ' num2str(st)]) ;