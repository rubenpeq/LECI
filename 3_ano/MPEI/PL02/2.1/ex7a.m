%% Exercicio 7a

N = 1e5;
n = 100;

programas = rand(n,N);
p_erro_A = 0.01; % André
p_erro_B = 0.05; % Bruno
p_erro_C = 0.001; % Carlos

programas(1:20,:) = programas(1:20,:) < p_erro_A;
programas(21:50,:) = programas(21:50,:) < p_erro_B;
programas(51:100,:) = programas(51:100,:) < p_erro_C;
