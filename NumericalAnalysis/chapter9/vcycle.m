function v=vcycle(m,k)
n=2^m-1;h=1/(n+1);
for j=1:n+2
    for i=2:m+1
        v(j,i)=0;
        f1(j,i)=0;
    end
end
for j=2:n+1
    f(j)=f((j-1)*h);
end
for i=m+1:-1:3
    for p=1:k
        for j=1:n
            v(j,i)=(v(j-1,i)+v(j+1,i)-h^2*f(j,i))/2;
        end
    end
    w(j)=f(j,i)-(v(j-1,i)-2*v(j,i)+v(j+1,i))/(h^2);
    for j=2:(n-1)/2+1
        f(j,i-1)=w(2*j);
    end
    h=2*h;
    n=(n-1)/2;
end
v(2,2)=-f(1/2)*8;
for i=3:m+1
    h=h/2;
    n=2*n+1;
    for j=1:(n+1)/2+1
        w(2*j-1)=v(j,i-1);
    end
    for j=1:(n+1)/2+1
        w(2*j)=(v(j-1,i-1)+v(j,i-1))/2;
    end
    for j=1:n+2
        v(j,i)=v(j,i)+w(j);
    end
    for p=1:k
        for j=2:n+1
            v(j,i)=(v(j-1,i)+v(j+1,i)-h^2*f(j,i))/2;
        end
    end
end







