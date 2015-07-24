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
