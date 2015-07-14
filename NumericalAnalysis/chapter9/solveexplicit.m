function v=solveexplicit(n,k,m,g,a,b)
h=1/(n+1);
s=k/(h^2);
for i=1:n+2
w(i)=g((i-1)*h);
end
t=0;
for j=2:m+1
    v(1)=a(j*k);
    v(n+2)=b(j*k);
    for i=2:n+1
        v(i)=s*w(i-1)+(1-2*s)*w(i)+s*w(i+1);
    end
    t=j*k;
    for i=2:n+1
        w(i)=v(i);
    end
end
        