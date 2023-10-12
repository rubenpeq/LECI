%% exercicio 1d
N= 1e6; %número de experiências
pRapaz = 0.5; %probabilidade de ser rapaz
nFilhos = 2;
simulacao = [ones(1,N) ,rand(nFilhos-1,N) < pRapaz]; % outra possibilidade
%simulacao = rand(nFilhos,N) < pRapaz;

cFav= sum(simulacao)==2; % outra possibilidade
%cFav= sum(simulacao(1,:))==1

cPoss = sum(simulacao)>=1; 
probSimulacao= cFav/cPoss
% mal feito