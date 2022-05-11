% Fast_chord.m
function[x,k]=Fast_chord(f,x1,x2,emg)
    k=1;
    y1=feval(f,x1);
    y2=feval(f,x2);
    x(k)=x2-(x2-x1)*y2/(y2-y1);
    y(k)=feval(f,x(k));
    k=k+1;
    x(k)=x(k-1)-(x(k-1)-x2)*y(k-1)/(y(k-1)-y2);
    
    while abs(x(k)-x(k-1))>emg
        y(k)=feval(f,x(k));
        x(k+1)=x(k)-(x(k)-x(k-1))*y(k)/(y(k)-y(k-1));
        k=k+1;
    end
