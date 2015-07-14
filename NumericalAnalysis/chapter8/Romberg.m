clear all
b=1;a=-1;m=10;
h=b-a;
r(1,1)=1/2*(b-a)*[f(a)+f(b)];
for n=2:m
    h=h/2;
    fh=0;
    for i=1:2^(n-2)
        fh=fh+f(a+(2*i-1)*h);
    r(n,1)=1/2*r(n-1,1)+h*fh;
    end
    for m=2:n
        r(n,m)=r(n,m-1)+[r(n,m-1)-r(n-1,m-1)]/(4^m-1);
    end
end
r1=r