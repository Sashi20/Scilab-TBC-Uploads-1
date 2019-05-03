//taking a=2
clc
clear
close;

t=-10:0.01:10;
dt=0.01;
x1=exp(2*t).*(t<=0);//defining e^at*u(-t)
x2=exp(-2*abs(t));//defining e^a|t|
omega=-10:0.01:10;
p=0;
for om=-10:0.01:10
  p=p+1;
  X1(p)=sum(x1.*exp(-%i*om*t).*dt);
  X2(p)=sum(x2.*exp(-%i*om*t).*dt);
end
X1=round(X1*10000)/10000;
X2=round(X2*10000)/10000;
figure(1)
subplot(1,2,1);plot(t,x1,'b');
title("x1(t): (e^at)*u(-t)","fontsize",4);
set(gca(),"x_location","middle","y_location","middle","zoom_box",[-10 -1.2 10 1.2]);
subplot(1,2,2);plot(omega,X1,'r');
title("X1(w): 2*sinc(w)","fontsize",4);
set(gca(),"x_location","middle","y_location","middle","zoom_box",[-10 -2 10 2]);
figure(2)
subplot(1,2,1);plot(t,x2,'b');
title("x2(t): e^-a|t|","fontsize",4);
set(gca(),"x_location","middle","y_location","middle","zoom_box",[-10 -1.2 10 1.2]);
subplot(1,2,2);plot(omega,X2,'r');
title("X2(w)","fontsize",4);
set(gca(),"x_location","middle","y_location","middle","zoom_box",[-10 -2 10 2]);

