function [r]=myroots(alpha1,phoneach,alpha2,xsabet)
xa=5e-6;xb=200e-4;
ya=fval(xa,alpha1,phoneach,alpha2,xsabet);
yb=fval(xb,alpha1,phoneach,alpha2,xsabet);

if ya*yb>0
   while ya*yb>0
       if  yb>0
           xb=2*xb;
       else
           xa=xa/2;
       end
        ya=fval(xa,alpha1,phoneach,alpha2,xsabet);
        yb=fval(xb,alpha1,phoneach,alpha2,xsabet);  
   end
end
if ya*yb<0
    yc=1;
    while (abs(yc)> 1e-11)
    xc=(xa+xb)/2;    
    yc=fval(xc,alpha1,phoneach,alpha2,xsabet);
    yc
     if yc==0
         r=xc;
         break;
     elseif  yc*ya<0
         xb=xc;
     elseif yc*yb<0
         xa=xc;
     end
    end  
    r=xc;
elseif ya==0
    r=xa;
else
    r=xb;
    
 end 
end