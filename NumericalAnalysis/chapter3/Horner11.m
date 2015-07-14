function f=Horner11(a,z_0)
n=length(a); % poly degree plus one: N+1
f=a(n); % initial condition
for k=n-1:-1:1 % iterative Horner’s algorithm
f=a(k)+z_0*f; % recursive evaluation of f(z)
end