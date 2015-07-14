function [Q R]=QR(A)
for j=1:n
    [H,rho]=householder(x,y)
    A(j:m,j:n)=(I