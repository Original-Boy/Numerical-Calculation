function y0 = Aitken_eval(X,Y,x0)
m=length(X);
n=length(x0);
y0=[];
for q = 1:n
    P=Y;
    ct = 0;
    for i = 1:m
        ct = ct+1;
        P1=P;
        for j=i+1:m
            P(j)=((x0(q)-X(i))*P1(j)-((x0(q)-X(j))*P1(i)))/(X(j)-X(i));
        end
        if abs(P(m)-P(m-1))<10^-6
            a = P(m);
            break;
        end
    end
    if ct == m
        y0=[y0 P(m)];
    else
        y0=[y0 a];
    end
end
