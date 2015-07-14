function [t x e]=FourOrderRungeKutta(m,t,x,h)
f=@(t,x)(t*x-x^2)/t^2;
u=@(t)t/(1/2+log(t));
e=abs(u(t)-x);
for k=1:m
    F1=h*f(t,x);
    F2=h*f(t+1/2*h,x+1/2*F1);
    F3=h*f(t+1/2*h,x+1/2*F2);
    F4=h*f(t+h,x+F3);
    x=x+(F1+2*F2+2*F3+F4)/6;
    t=t+h;
    e=abs(u(t)-x);
end
