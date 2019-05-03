clc
clear
close;

 N0=20;
n=0:N0-1;
x=sin(0.1*%pi*n);
xr=fft(x)/N0;
xr=round(xr*10000)/10000;
n=-4*N0/2:4*N0/2-1;

subplot(1,3,1);plot2d3(n,repmat(x,1,4));
set(gca(),"x_location","middle","y_location","middle");
title("x(n)=sin(0.1*pi*n)","fontsize",4);
subplot(1,3,2);plot2d3(n,repmat(abs(xr),1,4),[5]);
set(gca(),"y_location","middle");
title("|Dn|","fontsize",4);
subplot(1,3,3);plot2d3(n,repmat(phasemag(xr)*%pi/180,1,4),[5]);
set(gca(),"x_location","middle","y_location","middle");
title("phase(Dn)","fontsize",4);
