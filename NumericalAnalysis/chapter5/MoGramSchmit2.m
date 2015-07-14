function A=MoGramSchmit2(A)
[r n]=size(A);
for k=1:n
    d(k)=(norm(A(:,k)))^2
    t(k,k)=1;
    for j=k+1:n
        m=dot(A(:,j),A(:,k));
        t(k,j)=m/d(k)
        A(:,j)=A(:,j)-t(k,j)*A(:,k);
    end
end