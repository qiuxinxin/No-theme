function A=MoGramSchmit1(A)
[r n]=size(A);
for k=1:n
    A(:,k)=A(:,k)/norm(A(:,k));
    for j=k+1:n
        m=dot(A(:,j),A(:,k));
        A(:,j)=A(:,j)-m*A(:,k);
    end
end