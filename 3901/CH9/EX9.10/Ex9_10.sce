clc
clear
close;

//******************************part a(wc=pi/2)**********************
N=1024; //samples number
n=-(N/2):N/2-1;
x=sinc(%pi*n/4).*cos(%pi*n/2);
omega=[-N/2:(N/2)-1]*2*%pi/N;
X=fft(x);
X_mode=fftshift(abs(X));
X=round(X*10000)/10000;
X_angle=fftshift(phasemag(X)*%pi/180);

figure(1)
subplot(2,1,1);plot2d3(n,x,[2]);
title("part(a)_modulated signal","fontsize",4);
set(gca(),"zoom_box",[-30 -1.1 30 1.1],"y_location","middle","x_location","middle");
subplot(2,1,2);plot(omega,X_mode,'r');
set(gca(),"y_location","middle");
title("|X(w)|","fontsize",4);

//***************************part b(wc=0.875*pi)****************************
x=sinc(%pi*n/4).*cos(%pi*n*0.875);
X=fft(x);
X_mode=fftshift(abs(X));
X=round(X*10000)/10000;
X_angle=fftshift(phasemag(X)*%pi/180);
n1=[-3*N/2:3*N/2-1]*2*%pi/N;
figure(2)
subplot(2,1,1);plot2d3(n,x,[2]);
title("part(b)_modulated signal","fontsize",4);
set(gca(),"zoom_box",[-30 -1.1 30 1.1],"y_location","middle","x_location","middle");
subplot(2,1,2);plot(n1,repmat(X_mode,1,3),'r');
set(gca(),"y_location","middle");
title("|X(w)|","fontsize",4);
