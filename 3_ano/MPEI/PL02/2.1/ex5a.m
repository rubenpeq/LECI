%%exercicio 5a

N = 1e6;
n = 2;

lancamentos = randi(6,n,N);

%% Probabilidade A
A = sum(lancamentos)==9;
prob_A = sum(A)/N;
fprintf('Prob. de A = %9.5f\n', prob_A);

%% Probabilidade B
B = mod(lancamentos(2,:), 2) == 0;
prob_B = sum(B)/N;
fprintf('Prob. de B = %9.5f\n', prob_B);

%% Probabilidade C
C = sum(lancamentos==5)>=1;
prob_C = sum(C)/N;
fprintf('Prob. de C = %9.5f\n', prob_C);

%% Probabilidade D
D = sum(lancamentos==1)==0;
prob_D = sum(D)/N;
fprintf('Prob. de D = %9.5f\n', prob_D);