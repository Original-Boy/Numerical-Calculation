% Gaussmethod.m
function [x,k]=Gaussmethod(A,b,x0,N,emg)
n=length(A);
x2=zeros(n,1);
x1=x0;
r=max(abs(b-A*x1));
k=0;

while r>emg
    for i=1:n
        sum=0;
        for j=i:n
            if j>i
                sum=sum+A(i,j)*x1(j);
            elseif j<i
                sum = sum+A(i,j)*x2(j);
            end
        end
        x2(i)=(b(i)-sum)/A(i,i);
    end
    r=max(abs(x2-x1));
    x1=x2;
    k=k+1;

    if k>N
        disp("迭代失败，返回");
       return;
    end
end

x=x1;