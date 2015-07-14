function d=DividedDifference(x,y)
n=length(x);
for i=1:n
    d(i)=y(i);
end
for j=1:n-1
    for i=n:-1:j+1
        d(i)=(d(i)-d(i-1))/(x(i)-x(i-j));
    end
end
format rat