function [l,u]=Doolittle(n,a)
for k=1:n
    l(k,k)=1;
    for j=k:n
        m=a(k,j);
         for s=1:k-1
             m=m-l(k,s)*u(s,j);
         end
         u(k,j)=m;
    end
    for i=k+1:n
         w=a(i,k);
         for s=1:k-1
             w=w-l(i,s)*u(s,k);
         end
         l(i,k)=w/u(k,k);
    end
    format rat
end