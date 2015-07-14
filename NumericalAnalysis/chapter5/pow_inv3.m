function [x r] =pow_inv3(A,M,x)
n=length(A);
[l,u]=Doolittle(n,A);
format
for i= 1:M  
    y = l\x;
    m=x;
    x = u\y;
    r=x(1)/m(1)
    x=x/max(abs(x))
end