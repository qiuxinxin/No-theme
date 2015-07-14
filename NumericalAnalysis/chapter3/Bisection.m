function [c,w]=Bisection(a,b,n,p,q)
u=polynomial(a);
v=polynomial(b);
function f=polynomial(x)
    f=exp(1)^x-sin(x);
if sign(u)==sign(v)
    error('function has same sign at both end points')
end
for i=1:n
    e=b-a;
    c=a+0.5*e
    w=polynomial(c)
 if abs(w)<p || abs(e)<q
    break
 end
 if sign(w)==sign(u)
     a=c;u=w;
 else
     b=c; v=w;
 end 
end