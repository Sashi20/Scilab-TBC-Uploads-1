clc
clear
close;

N0=256; //samples no
T0=4;
T=T0/N0;
t=(0:T:(N0-1)*T)';

x=T*exp(-2*t);
x(1)=T*(exp(-2*T0)+1)/2;
Xr=fft(x);
r=-N0/2:N0/2-1;
omega=r*2*%pi/T0;
Xr_abs=fftshift(abs(Xr));
Xr_phase=fftshift(phasemag(Xr)*%pi/180);

figure(1)
subplot(1,3,1);plot(t,x,'r');
title("x(t)=e^-2t u(t)","fontsize",4);
subplot(1,3,2);plot(omega,Xr_abs,'b');plot2d3(omega,Xr_abs,[5]);
title("|X(w)|","fontsize",4);
set(gca(),"zoom_box",[0 0 40 0.5]);
subplot(1,3,3);plot2d3(omega,Xr_phase,[5]);plot(omega,Xr_phase,'b');
title("angle(X(w))","fontsize",4);
set(gca(),"zoom_box",[0 -1.5 40 0],"x_location","top");
