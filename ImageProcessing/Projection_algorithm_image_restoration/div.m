function q=div(p1,p2)
n=length(p1);
q=zeros(size(p1));
for i=2:n-1
    for j=2:n-1
        q(i,j)=p1(i,j)-p1(i-1,j)+p2(i,j)-p2(i,j-1);
        q(1,j)=p1(1,j)+p2(1,j)-p2(1,j-1);
        q(n,j)=-p1(n-1,j)+p2(n,j)-p2(n,j-1);
    end
    q(i,1)=p1(i,1)-p1(i-1,1)+p2(i,1);
    q(i,n)=p1(i,n)-p1(i-1,n)-p2(i,n-1);
end
q(1,1)=p1(1,1)+p2(1,1);
q(1,n)=p1(1,n)-p2(1,n-1);
q(n,1)=-p1(n-1,1)+p2(n,1);
q(n,n)=-p1(n-1,n)-p2(n,n-1);
