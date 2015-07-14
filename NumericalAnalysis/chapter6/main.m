%牛顿插值法求系数
x=[5 -7 -6 0];y=[1 -23 -54 -954];n=4;
c=NewtonInterpo(x,y,n)

%均差法求系数 daan:1 2 3 4
x=[5 -7 -6 0];y=[1 -23 -54 -954];
d=DividedDifference(x,y)