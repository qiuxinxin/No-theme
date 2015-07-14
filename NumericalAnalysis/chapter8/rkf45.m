function [wi, ti, count] = rkf45 ( RHS, t0, x0, tf, parms )

%RKF45     approximate the solution of the initial value problem
%
%                       x'(t) = RHS( t, x ),    x(t0) = x0
%
%          using Runge-Kutta-Fehlberg 4th order - 5th order method - 
%          this routine will work for a system of first-order equations 
%          as well as for a single equation
%
%     calling sequences:
%             [wi, ti] = rkf45 ( RHS, t0, x0, tf, parms )
%             rkf45 ( RHS, t0, x0, tf, parms )
%
%     inputs:
%             RHS     string containing name of m-file defining the 
%                     right-hand side of the differential equation;  the
%                     m-file must take two inputs - first, the value of
%                     the independent variable; second, the value of the
%                     dependent variable
%             t0      initial value of the independent variable
%             x0      initial value of the dependent variable(s)
%                     if solving a system of equations, this should be a 
%                     row vector containing all initial values
%             tf      final value of the independent variable
%             parms   three component vector of paramter values
%                     parm(1)      minimum allowed step size
%                     parm(2)      maximum allowed step size
%                     parm(3)      absolute error tolerance
%
%     output:
%             wi      vector / matrix containing values of the approximate 
%                     solution to the differential equation
%             ti      vector containing the values of the independent 
%                     variable at which an approximate solution has been
%                     obtained
%             count   number of function evaluations used in advancing the
%                     solution from t = t0 to t = tf
%

neqn = length ( x0 );
hmin = parms(1);
hmax = parms(2);
TOL  = parms(3);

ti(1) = t0;
wi(1:neqn, 1) = x0';
count = 0;
h = hmax;
i = 2;

while ( t0 < tf )
    k1 = h * feval ( RHS, t0, x0 );
	k2 = h * feval ( RHS, t0 + h/4, x0 + k1/4 );
	k3 = h * feval ( RHS, t0 + 3*h/8, x0 + 3*k1/32 + 9*k2/32 );
	k4 = h * feval ( RHS, t0 + 12*h/13, x0 + 1932*k1/2197 - 7200*k2/2197 + 7296*k3/2197 );
    k5 = h * feval ( RHS, t0 + h, x0 + 439*k1/216 - 8*k2 + 3680*k3/513 - 845*k4/4104 );
	k6 = h * feval ( RHS, t0 + h/2, x0 - 8*k1/27 + 2*k2 - 3544*k3/2565 + 1859*k4/4104 - 11*k5/40 );
	
	R = max ( abs ( k1/360 - 128*k3/4275 - 2197*k4/75240 + k5/50 + 2*k6/55 ) / h );
	q = 0.84 * ( TOL / R ) ^ (1/4);
	count = count + 6; 
	
	if ( R < TOL )
       x0 = x0 + 16*k1/135 + 6656*k3/12825 + 28561*k4/56430 - 9*k5/50 + 2*k6/55;
%      x0 = x0 + 25*k1/216 + 1408*k3/2565 + 2197*k4/4104 - k5/5;
	   t0 = t0 + h;

       ti(i) = t0;
       wi(1:neqn, i) = x0';
	   i = i + 1;	
	end;
	
	h = min ( max ( q, 0.1 ), 4.0 ) * h;
	if ( h > hmax ) h = hmax; end;
	if ( t0 + h > tf )
	   h = tf - t0;
	elseif ( h < hmin )
	   disp ( 'Solution requires step size smaller than minimum' );
	   return;
	end;
end;