function [a1,b1,c1]=Derivative(a,z_0)
n=length(a);
a1=a(n);
b1=0;
c1=0;
for k=n-1:-1:1
    c1=b1+c1*c1;
    b1=a1+z_0*b1;
    
    a1=a(k)+z_0*a1;
   
end
  a1=a1;
  b1=b1;
  c1=c1;