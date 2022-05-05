% experiment2.m
f = @f1;a=0;b=1;
N=16;
disp('变步长梯形法:')
disp(bbct(f,a,b,0.0000001))
disp('复化Simpson法')
disp(FSimpson(f,a,b,10^7))
disp('Romberg加速算法')
disp(Romberg(f,a,b,10^-7))
disp('三点Gauss公式')
disp(TGauss(f,a,b))