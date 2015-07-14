clear all
h=1;M=30;
for n=0:M+1
    d(n+1,1)=f(h/(2^n));
end
for k=2:M+1
    for n=k:M+1
        d(n,k)=d(n,k-1)+[d(n,k-1)-d(n-1,k-1)]/(4^(k-1)-1);
    end
end
digits(8);
d1=vpa(d)
