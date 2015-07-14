function v=multigridmethod(m,k,f)
h=1/2;n=1;
v(1)=0;v(3)=0;v(2)=-1/8*f(h);
for i=2:m
    h=h/2;n=2*n+1;
    for j=1:(n+1)/2+1
        w(2*j-1)=v(j);
    end
    for j=1:(n+1)/2
        w(2*j)=(v(j)+v(j+1))/2;
    end
    for j=1:n+2
        v(j)=w(j);
    end
    for p=1:k
        for j=2:n+1
            v(j)=(v(j-1)+v(j+1)-h^2*f(j*h))/2;
        end
    end
end