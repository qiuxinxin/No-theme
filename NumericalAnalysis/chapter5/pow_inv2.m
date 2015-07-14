function [x r] =pow_inv2(A,M,x)
n=length(A);
[l,u]=Doolittle(n,A);
format
for i= 1:M  
    y = l\x;
    x = u\y;
    M=max(x);
    m=min(x);
    if abs(M)>=abs(m)
        rl=M;
    else
        rl=m;
    end
    x = x/rl;
end
r = 1/rl;