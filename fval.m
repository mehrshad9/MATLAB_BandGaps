function [y]=fval(x0,alpha1,N,alpha2,xsabet)
    q=1.6e-19;
    len=length(N);
    sum=0;
    x=x0;
    for i=1:len
        sum=sum+N(i)*(1-exp(-alpha1(i)*xsabet))-  N(i) * exp(-alpha1(i)*xsabet)  * (1-exp(-alpha2(i)*x));
    end
    y=sum*q;
end