function [k,x,r]=Richardson(a,b,x,M)
n=length(a);
for k=1:M
    for i=1:n
        m=b(i);
        for j=1:n
            m=m-a(i,j)*x(j);
        end
        r(i)=m;
    end
    for i=1:n
        x(i)=x(i)+r(i);        
    end
    %x=vpa(x,5);
end
