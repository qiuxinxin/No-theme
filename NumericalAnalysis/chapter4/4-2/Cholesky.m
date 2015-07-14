function l=Cholesky(n,a)
for k=1:n
    m=a(k,k);
    for s=1:k-1
        m=m-l(k,s)^2;
    end
    l(k,k)=sqrt(m)
    for i=k+1:n
        w=a(i,k);
        for s=1:k-1
            w=w-l(i,s)*l(k,s);
        end
        l(i,k)=w/l(k,k)
    end
    %format 
end