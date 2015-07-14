function u=GrankNicolson(n,m,h,k)
s=h^2/k;
r=2+s;
for i=1:n-1
d(i)=r;
c(i)=-1;
u(i)=sin(pi*i*h);
end
for j=1:m
    for i=1:n-1
        d(i)=r;
        v(i)=s*u(i);
    end 
    v=tri(c,v,c,d);
    t=j*k;
    for i=1:n-1
        u(i)=exp(-pi^2*t)*sin(pi*i*h)-v(i);
    end
    for i=1:n-1
        u(i)=v(i);
    end
end