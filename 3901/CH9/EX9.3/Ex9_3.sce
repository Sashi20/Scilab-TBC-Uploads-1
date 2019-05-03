clc
clear
close;

N=1024; //samples number
n=0:N-1;
x=(0.8).^n;
omega=[-N/2:(N/2)-1]*2*%pi/N;
X=fft(x);
X_mode=fftshift(abs(X));
X=round(X*10000)/10000;
X_angle=fftshift(phasemag(X)*%pi/180);

figure(1)
subplot(3,1,1);plot2d3(n,x,[2]);
title("x(n)=(0.8).^n","fontsize",4);
set(gca(),"zoom_box",[0 0 10 0.9]);
subplot(3,1,2);plot(omega,X_mode,'r');
set(gca(),"y_location","middle");
title("|X(w)|","fontsize",4);
subplot(3,1,3);plot(omega,X_angle,'r');
set(gca(),"x_location","middle");
title("phase(X(w)","fontsize",4);
