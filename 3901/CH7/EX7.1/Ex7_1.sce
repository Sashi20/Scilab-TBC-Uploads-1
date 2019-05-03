clc
clear
close;
//phase error will be there due to round-off error

t=0:0.009:2;
dt=0.009;
x=exp(-2*t);
omega=-20:0.009:20;
p=0;
for om=-20:0.009:20
  p=p+1;
  X(p)=sum(x.*exp(-%i*om*t).*dt);
end
X=round(X*10000)/10000;
subplot(1,3,1);plot(t,x,'k');
title("given signal-(e^-2t)*u(t)","fontsize",4);
subplot(1,3,2);plot(omega,abs(X),'r');
title("|X(w)|","fontsize",4);
set(gca(),"y_location","middle");
subplot(1,3,3);plot(omega,phasemag(X)*%pi/180,'b');
set(gca(),"x_location","middle","y_location","middle");
title("phase(X(w))","fontsize",4);
