%% exercicio 1a
N= 1e6; %número de experiências
pRapaz = 0.5; %probabilidade de ser rapaz
nFilhos = 2;
M = rand(nFilhos,N) < pRapaz;
sucessos= sum(M)>=1; % numero minimo de rapazes
probSimulacao= sum(sucessos)/N