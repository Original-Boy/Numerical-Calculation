function[result] = Lagrange_eval(X,Y,x0)
m = length(X);
N = zeros(m,1);
len = length(x0);
result = [];
for q = 1:len
    y0 = 0;
    for i = 1:m
        N(i)=1;
        for j = 1:m
            if j ~=i
                N(i)=N(i)*(x0(q)-X(j))/(X(i)-X(j));
            end
        end
    y0 = y0 + Y(i)*N(i);
    end
    result = [result y0];
end



