function [x,s]=aitkenAcc(A,x,M)
for k=1:M
    y=A*x;
    r(k)=linearFun(y)/linearFun(x);
    x=y/max(abs(y));
    if k>2
        s(k)=r(k)-(r(k)-r(k-1))^2/(r(k)-2*r(k-1)+r(k-2));
    end
end
s=s(k)