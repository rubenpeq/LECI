%% exercicio 3a

N=1e4; % numero experiencias
T=1000; %tamanho do array
k=10; %numero keys inseridas

simulacao = randi(T, k, N);
cFav=0;

for col=1:N
    coluna=simulacao(:,col);
    u=unique(coluna) %list unique values
    cFav = cFav + (length(u)==k)
        
end

p= 1 - cFav/N