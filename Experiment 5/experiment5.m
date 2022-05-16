% experiment5.m
A=[-4,-1,0,-1,0,0;
    -1,4,-1,0,-1,0;
    0,-1,4,0,0,-1;
    -1,0,0,4,-1,0;
    0,-1,0,-1,4,-1;
    0,0,-1,0,-1,4;];
b=[0,5,0,6,2,6]';
x0=[0,0,0,0,0,0]';
N=100;
emg=10^-5;
[x,k]=Jacobimethod(A,b,x0,N,emg);
disp("Jacobi:")
disp(x)
[x,k]=Gaussmethod(A,b,x0,100,emg);
disp("Gauss:")
disp(x)
w=[1,1.05,1.1,1.25,1.8];
disp("超松弛法:")
for index=1:5
    disp("w=")
    disp(w(index));
    [x,k]=SORmethod(A,b,x0,N,emg,w(index));
    disp('need k=')
    disp(k);
    disp(x);
    disp("------------------")
end