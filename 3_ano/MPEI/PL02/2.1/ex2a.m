%% exercicio 2a
N=1e3; %numero de experiencias
n=60; %numero de dados
m=365; %numero de alvos
simulacao = randi(m, n, 1e6);
cFav=0;
%%

for col=1:N
    coluna=simulacao(:,col);
    u=unique(coluna) %list unique values
    cFav = cFav + (length(u)==n)
        
end

p=1 - cFav/N