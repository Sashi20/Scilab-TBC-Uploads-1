clc
clear
close

Ey=integrate("sin(t).^2","t",0,2*%pi);//energy of x(t)
C=(1/Ey).*integrate("sin(t).*(1.*((t>=0)&(t<=%pi))-1.*((t>%pi)&(t<=2*%pi)))","t",0,2*%pi);
printf("\napproximated signal is x(t) ~ %.3f*sin(t)\n",C);
t=0:0.001:2*%pi;
x=1.*((t>=0)&(t<=%pi))-1.*((t>%pi)&(t<=2*%pi));
x_approx=(4/%pi).*sin(t);
plot(t,x,'b');plot(t,x_approx,'r');
title("signal approximation","fontsize",4);
legend("actual_signal","approximated_signal");
set(gca(),"x_location","middle","zoom_box",[t(1) -2 t($) 2]);
