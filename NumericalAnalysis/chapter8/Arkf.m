function [t,x]=Arkf(a,b,alpha,h,delta,m,f)
t=a;x=alpha;k=0;
iflag=1;
while k<m
    d=b-t;
    if abs(d)<=abs(h)
        iflag=0;
        h=d;
    end
    s=t;
    y=x;
    F1=h*f(t,x);
    F2=h*f(t+1/4*h,x+1/4*F1);
    F3=h*f(t+3*h/8,x+3*F1/32+9*F2/32);
    F4=h*f(t+12*h/13,x+1932*F1/2197-7200*F2/2197+7296*F3/2197);
    F5=h*f(t+h,x+439*F1/216-8*F2+3680*F3/513-845*F4/4104);
    F6=h*f(t+h/2,x-8*F1/27+2*F2-3544*F3/2565+1859*F4/4104-11*F5/40);
    
    x=x+16*F1/135+6656*F3/12825+28561*F4/56430-9*F5/50+2*F6/55;
    e=F1/360-128*F3/4275-2197*F4/75240+F5/50+2*F6/55;
    
    t=t+h;
    if iflag==0
        break
    end
        if abs(e)>=delta
            t=s;
            h=h/2;
            x=y;
            k=k-1;
        else if abs(e)<delta/128
                h=2*h;
            end
        end
end
        
        
        
        
        
        
        
        
        