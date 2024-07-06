%% exercicio 9a

N=1e5

sigma = 2
m =14

x= randn(N, 1)
x2 = x*sigma + m

%[counts, centers] = hist(x2, 100)
%p=counts/N
%stem(centers, p)

pa = sum(x2>12 & x2<16)/N

pb = sum(x2>m-2*sigma & x2< m+2+sigma)/N

pc = sum(x2>=10)/N

normcdf(16, 14, 2) - normcdf(12, 14, 2) %pa
normcdf(18, 14, 2) - normcdf(10, 14, 2) %pb
normcdf(10, 14, 2) - normcdf(20, 14, 2) %pc