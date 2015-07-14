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

        ux=(u(i+1,j)-u(i-1,j))/2*h;
	uy=(u(i,j+1)-u(i,j))/h;
        Gradu=sqrt(eps*eps+ux*ux+uy*uy);
        co3=1./Gradu;

	ux=(u(i+1,j-1)-u(i-1,j-1))/2*h;
        uy=(u(i,j)-u(i,j-1))/h;
        Gradu=sqrt(eps*eps+ux*ux+uy*uy);
        co4=1./Gradu;
        co=1.+(1/(2*lambda*h*h))*(co1+co2+co3+co4);

	div=co1*u(i+1,j)+co2*u(i-1,j)+co3*u(i,j+1)+co4*u(i,j-1);

	u(i,j)=(1./co)*(u0(i,j)+(1/(2*lambda*h*h))*div);

      end
    end
    %------------ FREE BOUNDARY CONDITIONS IN u -------------------
	for i=2:M-1,
          u(i,1)=u(i,2);
          u(i,N)=u(i,N-1);
        end

	for j=2:N-1,
          u(1,j)=u(2,j);
          u(M,j)=u(M-1,j);
        end

        u(1,1)=u(2,2);
        u(1,N)=u(2,N-1); 
        u(M,1)=u(M-1,2);
        u(M,N)=u(M-1,N-1);        
%%% Compute the discrete energy at each iteration
en=0.0;  
    for i=2:M-1,
      for j=2:N-1,
      ux=(u(i+1,j)-u(i,j))/h;
      uy=(u(i,j+1)-u(i,j))/h;
      fid=(u0(i,j)-u(i,j))*(u0(i,j)-u(i,j));
      en=en+sqrt(eps*eps+ux*ux+uy*uy)+lambda*fid;
      end
    end
%%% END computation of energy 
Energy(Iter)=en;
end
% Plot the Energy versus iterations 
figure 
plot(Energy);legend('Energy/Iterations');







