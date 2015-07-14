clear all
n=9;k=0.006;m=171;g=@(x)sin(pi*x);a=@(x)0;b=@(x)0;
v=solveexplicit(n,k,m,g,a,b)

n=9;k=0.006;m=171;g=@(x)sin(pi*x);
v=solveimplicit(n,k,m,g);

n=10;m=20;h=0.1;k=0.005;
u=GrankNicolson(n,m,h,k);

n=18;m=200;g=@(x,y)10^(-4)*sin(3*pi*x)*sin(3*pi*y);h=1/(n+1);
v=finitedifference(g,n,m,h);
for i=0:18
    for j=0:18
    w(i+1,j+1)=g(i,j);
    end
end
w1=w;

m=6;k=3;f=@(x)cos(x);
v=multigridmethod(m,k,f)







