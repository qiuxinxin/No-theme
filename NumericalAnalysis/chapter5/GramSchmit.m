function B=GramSchmit(A,B)
[r n]=size(A);
for j=1:n
    for i=1:j-1
        t(i,j)=dot(A(:,j),B(:,i));
    end
    m=A(:,j);
    if i<j
        m=m-t(i,j)*B(:,i);
    end
    C(:,j)=m
    t(j,j)=norm(C(:,j))
    B(:,j)=C(:,j)/t(j,j);
end