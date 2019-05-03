//taking tau=2
clc
clear
close;

t=-10:0.01:10;
dt=0.01;
x=1.*((t>=0.5)&(t<=2.5));//rect(t/2) delayed by (3*tau/4)=1.5
omega=-10:0.01:10;
p=0;
for om=-10:0.01:10
  p=p+1;
  X(p)=sum(x.*exp(-%i*om*t).*dt);
end
X=round(X*10000)/10000;
ph=round(phasemag(X)*10000)/10000;
figure(1)
subplot(1,3,1);plot(t,x,'b');
title("x(t): rect(t/2-1.5)","fontsize",4);
set(gca(),"x_location","middle","y_location","middle","zoom_box",[-4 -1.2 4 1.2]);
subplot(1,3,2);plot(omega,abs(X),'r');
title("|X(w)|","fontsize",4);
set(gca(),"y_location","middle");
subplot(1,3,3);plot(omega,ph*%pi/180,'r');
title("phas(X(w)): -wt0","fontsize",4);
set(gca(),"x_location","middle","y_location","middle","zoom_box",[-6 -4 6 4]);
