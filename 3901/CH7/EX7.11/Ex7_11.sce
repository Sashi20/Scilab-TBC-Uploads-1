//taking tau=2
clc
clear
close;

t=-20:0.01:20;
dt=0.01;
x1=1.*((t>=-1)&(t<=1));
x2=2*sinc(t);
omega=-20:0.01:20;
p=0;
for om=-20:0.01:20
  p=p+1;
  X1(p)=sum(x1.*exp(-%i*om*t).*dt);
  X2(p)=sum(x2.*exp(-%i*om*t).*dt);
end
X1=round(X1*10000)/10000;
X2=round(X2*10000)/10000;
figure(1)
subplot(1,2,1);plot(t,x1,'b');
title("x(t): rect(t/2)","fontsize",4);
set(gca(),"x_location","middle","y_location","middle","zoom_box",[-10 -2 10 2]);
subplot(1,2,2);plot(omega,X1,'r');
title("X(w): 2*sinc(w)","fontsize",4);
set(gca(),"x_location","middle","y_location","middle","zoom_box",[omega(1) -2 omega($) 2]);
figure(2)
subplot(1,2,1);plot(t,x2,'b');
title("x(t): 2*sinc(t)","fontsize",4);
set(gca(),"x_location","middle","y_location","middle","zoom_box",[t(1) -2 t($) 2]);
subplot(1,2,2);plot(omega,X2,'r');
title("X(w): 2*pi*rect(w/2)","fontsize",4);
set(gca(),"x_location","middle","y_location","middle","zoom_box",[-10 -7 10 7]);

