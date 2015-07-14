function v=solveimplicit(n,k,m,g)
h=1/(n+1);
s=k/(h^2);
for i=1:n
v(i)=g(i*h);
end
t=0;
for i=1:n-1
    c(i)=-s;
    a(i)=-s;
end
for j=1:m
    for i=1:n
        d(i)=1+2*s;
    end
    b1=v;
    v=tri(a,b1,c,d);
    t=j*k;
end