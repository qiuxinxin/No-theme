function [l,u]=Crout(n,a)
for k=1:n
    u(k,k)=1;
     for i=k:n
         w=a(i,k);
         for s=1:k-1
             w=w-l(i,s)*u(s,k);
         end
         l(i,k)=w;
     end
    for j=k+1:n
        m=a(k,j);
         for s=1:k-1
             m=m-l(k,s)*u(s,j);
         end
         u(k,j)=m/l(k,k);
    end
    format rat
end