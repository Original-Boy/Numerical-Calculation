X = [0.3 ,0.4,0.5,0.6,0.7];
Y = [0.29850,0.39646,0.49311,0.58813,0.68122];
x0 = [0.358,0.462,0.514,0.635];
disp('Aitken algorithm: y0=')
disp(Aitken_eval(X,Y,x0))
disp('Neville algorithm: y0=')
disp(Neville_eval(X,Y,x0))