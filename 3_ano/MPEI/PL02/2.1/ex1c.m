%% exercicio 1c
N= 1e6; %número de experiências
pRapaz = 0.5; %probabilidade de ser rapaz
nFilhos = 2;
M = rand(nFilhos,N) < pRapaz;
cFav= sum(M)==2; % numero minimo de rapazes
cPoss = sum(M)>=1
probSimulacao= cFav/cPoss