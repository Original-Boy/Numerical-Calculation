x = zeros(10);
f1=@(x) x.^3-3.*x-1;
ff1=@(x)-3+3.*x.^2;
x(1)=2;

for i=1:10
    x(i+1)=x(i)-f1(x(i))/ff1(x(i));
end
disp('3-1Newton法:')
disp(x(10))

f2=@(x) x.^3-2.*x-exp(x)+2;
x=1;
for index =1:10
    x1=f2(x);
    x2=f2(x1);
    x=x2-(x2-x1).^2./(x2-2.*x1+x);
end
disp('3-2迭代法:')
disp(x)

f3=@(z) z*exp(z)-1;
x=zeros(10);
x(1)=0.5;
x(2)=0.6;

for k=2:10
    x(k+1)=x(k)-f3(x(k))/(f3(x(k))-f3(x(1)))*(x(k)-x(1));
end
disp('3-3弦截法:')
disp(x(10))

disp('3-3快速弦截法:')
[x,k]=Fast_chord(f3,0.5,0.6,10^-6);
disp(x)

x=linspace(0,1,100);
y=x.*exp(x)-1;
plot(x,y,x,0);