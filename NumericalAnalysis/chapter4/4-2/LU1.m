function [l,u]=LU1(n,a)
for k=1:n
    l(k,k)=2;
    v=a(k,k);
    for s=1:k-1
        v=v-l(k,s)*u(s,k)
    end
    u(k,k)=v/l(k,k);
    for j=k+1:n
        m=a(k,j);
         for s=1:k-1
             m=m-l(k,s)*u(s,j);
         end
         u(k,j)=m/l(k,k);
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