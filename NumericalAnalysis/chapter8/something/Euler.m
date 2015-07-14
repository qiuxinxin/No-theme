% Numerical Mathematics and Computing, Fifth Edition
% Ward Cheney & David Kincaid
% Brooks/Cole Publ. Co.
% (c) 2003
%
% file:  euler.m
%
% Euler's method:
% The function f is defined in the M-file 'f.m'.

a = 0, b = 4, n = 20,
h = (b - a)/n
t = a
T = t
x = 1.0
X = x
for  i=1:n
 x = x + h*f(t,x)
 t = t + h
 X = [X, x]
 T = [T, t]
end
S = a:h/4:b
Y = exp(S)
plot(T,X,'o', S,Y,'-')