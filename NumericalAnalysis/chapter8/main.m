
%四阶龙格－库塔算法(书上)
m=256;t=1.0;x=2.0;h=0.0078125;
[t1 x1 e1]=FourOrderRungeKutta(m,t,x,h);

%四阶龙格－库塔算法
t0=1.0;x0=2.0;tf=3.0;N=0.0078125;RHS=@(t,x)(t*x-x^2)/t^2;
[wi, ti] = rk4 ( RHS, t0, x0, tf, N );

%Runge-Kutta-Fehlberg 4th order - 5th order method
t0=1.0;x0=2.0;tf=3.0;N=0.0078125;RHS=@(t,x)(t*x-x^2)/t^2;parms=[N;2*N;N];
[wi, ti, count] = rkf45 ( RHS, t0, x0, tf, parms );
wi1=wi;
ti1=ti;

%自适应龙格－库塔－费尔贝格算法
a=1;b=3;alpha=2;h=0.007;delta=0.01;m=125;f=@(t,x)(t*x-x^2)/t^2;
[t,x]=Arkf(a,b,alpha,h,delta,m,f)














