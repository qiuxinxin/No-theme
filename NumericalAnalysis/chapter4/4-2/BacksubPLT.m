function x=BacksubPLT(n,a,b,p)
for i=n:-1:1
    s=b(p(i));
    for j=i+1:1:n
        s=s-a(p(i),j)*x(j);
    end
    x(i)=s/a(p(i),i);
end