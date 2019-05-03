clc
clear
close;

t=-4:0.01:4;
dt=0.01;
x=exp(-9*t).*(t>=0);
x1=1.*(t>=0);
omega=-20:0.01:20;
p=0;
for om=-20:0.01:20
  p=p+1;
  X(p)=sum(x.*exp(-%i*om*t).*dt);
end
X=round(X*10000)/10000;
subplot(1,2,1);plot(t,x,'b');plot(t,x1,'g');
title("u(t) approximated as (lim(t-0)e^-at)*u(t)","fontsize",4);
set(gca(),"x_location","middle","y_location","middle","zoom_box",[-4 -2 4 2]);
subplot(1,2,2);plot(omega,abs(X),'r');
title("X(w)","fontsize",4);
set(gca(),"y_location","middle");
