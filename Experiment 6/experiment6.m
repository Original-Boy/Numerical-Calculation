A=[1,1,0,1;
    2,1,-3,1;
    4,-1,-2,2;
    3,-1,-1,2];
b = [2,1,0,-3]';
x = Gauss_pivot(A,b);
disp("高斯选主元素法:")
disp(x)
A=[2,2,3;
    4,7,7;
    -2,4,5];
b=[3,1,-7]';
x=lu_decompose(A,b);
disp("杜利特尔分解法:")
disp(x)

A=[4,-2,4;
    -2,17,10;
    4,10,9];
b=[10,3,-7]';
x=Chol_decompose(A,b)';
disp("Cholesky方法:")
disp(x)

a=[0,90.860,-67.590,46.260];
b=[136.01,98.810,132.01,177.17];
c=[90.860,-67.590,46.260,0];
f=[-33.254,49.709,28.067,-7.3244];
disp("追赶法:")
disp(threedia(a,b,c,f)')