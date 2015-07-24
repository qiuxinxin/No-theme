function u=proj(f,t,lbd)
m=length(f);
p01=zeros(m,m);
p02=zeros(m,m);
n=1;
while n<=100
    q0=div(p01,p02);
    u0=q0-f/lbd;
    [ux,uy]=grad(u0);
    V=(ux.^2+uy.^2).^(1/2);
    p11=(p01+t*ux)./(1+t*V);
    p12=(p02+t*uy)./(1+t*V);
    p01=p11;
    p02=p12;
    n=n+1;
end 
p=div(p11,p12);
u=f-lbd*p;