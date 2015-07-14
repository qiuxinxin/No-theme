function v=finitedifference(g,n,m,h)
for i=1:n+2
    x(i)=(i-1)*h;
    y(i)=(i-1)*h;
end

for i=1:n+2
    v(i,1)=g(x(i),0);v(i,n+2)=g(x(i),1);
    v(n+2,i)=g(1,y(i));v(i,1)=g(0,y(i));
end

for k=1:m
    for j=2:n+1
        for i=2:n+1
            v(i,j)=(v(i-1,j)+v(i+1,j)+v(i,j-1)+v(i,j+1))/4.0;
        end
    end
end