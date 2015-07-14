function[m,x]=pow_inv1(A,M,x)
format
n=length(A);
B=inv(A);
for k=1:M;
    x=B*x;
    m=abs(x(1,1));
    for i=1:n
        if abs(m)<abs(x(i,1));
            m=x(i,1);
        end
    end
    x=x/m;
end