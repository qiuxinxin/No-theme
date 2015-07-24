function u=ROF(u0,IterMax,eps,lambda)
u0=double(u0);
[M N]=size(u0); %initialize u by u0 (not necessarily) or by a constant, or by a random image
u=u0;
[M,N]=size(u);
h=1.;%  space discretization 
for Iter=1:IterMax, 
	Iter
    for i=2:M-1,
      for j=2:N-1,
    %-----------computation of coefficients co1,co2,co3,co4---------
	ux=(u(i+1,j)-u(i,j))/h;
	uy=(u(i,j+1)-u(i,j-1))/2*h;
        Gradu=sqrt(eps*eps+ux*ux+uy*uy);
        co1=1./Gradu;

        ux=(u(i,j)-u(i-1,j))/h;
	uy=(u(i-1,j+1)-u(i-1,j-1))/2*h;
        Gradu=sqrt(eps*eps+ux*ux+uy*uy);
        co2=1./Gradu;

        
    






