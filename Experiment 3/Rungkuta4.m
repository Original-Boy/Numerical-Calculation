% Rungkuta4.m
function R=Rungkuta4(f,a,b,N,ya)
h=(b-a)/N;
y=zeros(1,N+1);
x=a:h:b;
y(1)=ya;
for i=1:N
    k1=feval(f,x(i),y(i));
    k2=feval(f,x(i)+h/2,y(i)+(h/2)*k1);
    k3=feval(f,x(i)+h/2,y(i)+(h/2)*k2);
    k4=feval(f,x(i)+h,y(i)+h*k3);
    y(i+1)=y(i)+(h/6)*(k1+2*k2+2*k3+k4);
end
R=[x',y'];