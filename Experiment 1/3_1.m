X = [0.3 ,0.4];
Y = [0.29850,0.39646];
x0 = [0.358,0.462,0.514,0.635];
disp('一次插值：y0=')
disp(Lagrange_eval(X,Y,x0));

X = [0.3,0.4,0.5];
Y = [0.29850,0.39646,0.49311];
x0 = [0.358,0.462,0.514,0.635];
disp('二次插值：y0=')
disp(Lagrange_eval(X,Y,x0));

X = [0.3 ,0.4,0.5,0.6];
Y = [0.29850,0.39646,0.49311,0.58813];

x0 = [0.358,0.462,0.514,0.635];
disp('三次插值：y0=')
disp(Lagrange_eval(X,Y,x0));