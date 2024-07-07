%% exercicio 3a

num_moedas = 4

xi = 0: num_moedas

pX = zeros(1, num_moedas)

for i=1; num_moedas+1
    k = xi(i)
    p(i+1) = moedas()
end

clf
stem(xi, pX)

xlabel("x_i")
ylabel("pX(x_i)")
