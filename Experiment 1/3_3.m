x0=linspace(-5,5,1000);
x = linspace(-5,5,3);
y = 1./(1+x.^2);
for i=1:1000
    y0(i)=Lagrange_eval(x,y,x0(i));
end
plot(x0,y0,'-')
hold on

x = linspace(-5,5,5);
y = 1./(1+x.^2);
for i=1:1000
    y0(i)=Lagrange_eval(x,y,x0(i));
end
plot(x0,y0,'-')
hold on

x = linspace(-5,5,7);
y = 1./(1+x.^2);
for i=1:1000
    y0(i)=Lagrange_eval(x,y,x0(i));
end
plot(x0,y0,'-')
hold on

x = linspace(-5,5,9);
y = 1./(1+x.^2);
for i=1:1000
    y0(i)=Lagrange_eval(x,y,x0(i));
end
plot(x0,y0,'-')
hold on

x = linspace(-5,5,11);
y = 1./(1+x.^2);
for i=1:1000
    y0(i)=Lagrange_eval(x,y,x0(i));
end
plot(x0,y0,'-')
legend('n=2','n=4','n=6','n=8','n=10')
hold off

clear
clc

disp('exact value: ')
disp(1/(1+4.8^2))

x = [-5,-3];
y = 1./(1+x.^2);
disp('n=5, x=-4.8, y=:')
disp(Lagrange_eval(x,y,-4.8))
x = [3,5];
y = 1./(1+x.^2);
disp('n=5, x=4.8, y=:')
disp(Lagrange_eval(x,y,4.8))
x = [-5,-4];
y = 1./(1+x.^2);
disp('n=10, x=-4.8, y=:')
disp(Lagrange_eval(x,y,-4.8))
x = [4,5];
y = 1./(1+x.^2);
disp('n=10, x=4.8, y=:')
disp(Lagrange_eval(x,y,4.8))
x = [-5,-4.5];
y = 1./(1+x.^2);
disp('n=20, x=-4.8, y=:')
disp(Lagrange_eval(x,y,-4.8))
x = [4.5,5];
y = 1./(1+x.^2);
disp('n=20, x=4.8, y=:')
disp(Lagrange_eval(x,y,4.8))
