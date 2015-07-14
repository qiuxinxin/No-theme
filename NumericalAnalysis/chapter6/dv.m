function c=dv(c,x,n)
for j=2:n
    for i=1:n-j
        c(i,j)=(c(i+1,j-1)-c(i,j-1))/(x(i+j)-x(i));
    end
end