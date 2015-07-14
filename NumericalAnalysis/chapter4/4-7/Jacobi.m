function [k,x]=Jacobi(a,b,x,M)
n=length(a);
for k=1:M
    for i=1:n
        d=1/a(i,i);
        b(i)=d*b(i);
        for j=1:n
            a(i,j)=d*a(i,j);
            m=b(i);
            m=m-a(i,j)*x(j);
        end
        u(i)=m;
    end
    for i=1:n
        x(i)=u(i);
    end
end
        