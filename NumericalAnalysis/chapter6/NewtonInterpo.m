function c=NewtonInterpo(x,y,n)
c(1)=y(1);
for k=2:n
    d=x(k)-x(k-1);
    u=c(k-1);
    for i=k-2:-1:1
        u=u*(x(k)-x(i))+c(i);
        d=d*(x(k)-x(i));
    end
    c(k)=(y(k)-u)/d;
end
    