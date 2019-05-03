//taking tau=2
clc
clear 
close;

t=-3:0.01:5;
dt=0.01;
x=(t+1).*((t>=-1)&(t<=0))+(1-t).*((t>0)&(t<=1));
omega=-20:0.01:20;
p=0;
for om=-20:0.01:20
  p=p+1;
  X(p)=sum(x.*exp(-%i*om*t).*dt);
end
X=round(X*10000)/10000;
figure(1)
subplot(1,2,1);plot(t,x,'b');
title("x(t): tri(t/tau), tau=2","fontsize",4);
set(gca(),"x_location","middle","y_location","middle","zoom_box",[-2.2 -1.2 2.2 1.2]);
subplot(1,2,2);plot(omega,X,'r');
title("X(w)","fontsize",4);
set(gca(),"y_location","middle","x_location","middle","zoom_box",[-20 -1.1 20  1.1]);
