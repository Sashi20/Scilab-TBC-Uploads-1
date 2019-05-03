clc
clear all
close;

t=-1:0.001:1;
x=1.*((t>=-1)&(t<0))-1.*((t>=0)&(t<=1));
x_approx=(-3/2)*t+(7/8)*(2.5*t.^3-1.5*t);
plot(t',x,'b');plot(t,x_approx,'r');title("legendre series approximation","fontsize",4)
set(gca(),"x_location","middle","zoom_box",[t(1) -2 t($) 2]);
legend("actual_signal","approximated signal");
