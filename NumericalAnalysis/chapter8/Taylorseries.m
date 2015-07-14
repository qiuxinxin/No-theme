m=200;h=0.01;t=-1.0;x=3.0;
for k=1:m
x1=cos(t)-sin(x)+t^2;
x2=-sin(t)-x1*cos(x)+2*t;
x3=-cos(t)-x2*cos(x)+(x1)^2*sin(x)+2;
x4=sin(t)+(x1^3-x3)*cos(x)+3*x1*x2*sin(x);
x=x+h*(x1+h/2*(x2+h/3*(x3+h/4*x4)));
t=t+h;
end
xx=x