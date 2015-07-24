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
      


