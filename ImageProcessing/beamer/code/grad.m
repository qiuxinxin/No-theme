function [ux,uy]=grad(u)
n=length(u);
ux=zeros(size(u));
uy=zeros(size(u));
for i=1:n-1
   for j=1:n
      ux(i,j)=u(i+1,j)-u(i,j);
      ux(n,j)=0;
   end
end
for i=1:n
    for j=1:n-1
     uy(i,j)=u(i,j+1)-u(i,j);
     uy(i,n)=0;
    end 
end
