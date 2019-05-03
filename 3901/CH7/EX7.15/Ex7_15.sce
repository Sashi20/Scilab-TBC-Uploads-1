clc
clear 
close;
t=-10:0.01:10;
dt=0.01;
x=(1.*((t>=-2)&(t<=2))).*cos(10*t);//modulated signal
omega=-30:0.01:30;
p=0;
for om=-30:0.01:30
  p=p+1;
  X(p)=sum(x.*exp(-%i*om*t).*dt);
end
X=round(X*10000)/10000;
figure(1)
subplot(1,2,1);plot(t,x,'b');
title("x(t): modulated signal","fontsize",4);
set(gca(),"x_location","middle","y_location","middle","zoom_box",[-2.2 -1.2 2.2 1.2]);
subplot(1,2,2);plot(omega,X,'r');
title("X(w): peak at -10 and 10","fontsize",4);
set(gca(),"y_location","middle","x_location","middle","zoom_box",[-20 -3 20  3]);
