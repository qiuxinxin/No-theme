function [x r] =pow_inv(A,n,x)
[L,U]=Doolittle(n,A)
m = size(A,1);
x = ones(m,1); % make an initial vector with ones
for i = 1:n
    y = L\x;
    x = U\y;
    M = max(x);
    m = min(x);
    if abs(M) >= abs(m)
        el = M;
    else
        el = m;
    end
    x = x/el;
end
r = 1/el;