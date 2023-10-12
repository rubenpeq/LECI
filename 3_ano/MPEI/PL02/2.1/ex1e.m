%% exercicio 1e
N= 1e6; %número de experiências
pRapaz = 0.5; %probabilidade de ser rapaz
nFilhos = 5;
simulacao = rand(nFilhos,N) < pRapaz;
cFav= sum(simulacao)==2; % numero minimo de rapazes
cPoss = sum(simulacao)>=1
probSimulacao= cFav/cPoss

% deve dar 0.32 ???