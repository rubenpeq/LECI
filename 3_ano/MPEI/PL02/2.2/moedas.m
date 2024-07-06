function probSimulacao = moedas(p,n,k,N)

lancamentos = rand(n,N) > p;
sucessos= sum(lancamentos)==k;
probSimulacao= sum(sucessos)/N

end
