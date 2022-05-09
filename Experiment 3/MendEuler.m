% MendEuler.m
function E = MendEuler(f,a,b,N,ya)
h = (b-a)/N;
y=zeros(1,N+1);
x=zeros(1,N+1);
y(1)=ya;
x=a:h:b;
for i=1:N
    y1=y(i)+h*feval(f,x(i),y(i));
    y2=y(i)+h*feval(f,x(i+1),y1);
    y(i+1)=(y1+y2)/2;
end
E=[x',y'];
