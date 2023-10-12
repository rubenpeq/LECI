%% exercicio 1a

Sx = 1:6

xi = Sx

pX = [1 1 1 1 1 1] /6

stem(xi, pX)

xlabel("x_i")
ylabel("p_X(x_i)")
title("fmp X")

axis([0.5 6.5 -0.05 0.2])

%% exercicio 1b

Fx = cumsum(pX)

stairs(xi, Fx)

axis([0.5 6.5 -0.005 1.1])