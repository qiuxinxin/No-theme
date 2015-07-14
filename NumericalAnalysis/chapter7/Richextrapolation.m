clear all
s=sqrt(2);

h=1;M=30;
for k=1:M+1
d(k)=(atan(s+h)-atan(s-h))/(2*h);
digits(8);
d1(k)=vpa(d(k));
h=h/2;
end
for k=2:M+1
    r(k)=d1(k)+(d1(k)-d1(k-1))/3;
end
r1=r
d2=d1






