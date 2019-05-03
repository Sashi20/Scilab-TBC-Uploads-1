clc
clear
close;

N0=32;
n=0:N0-1;
x=[ones(1,5) zeros(1,23) ones(1,4)];
xr=fft(x)/N0;
xr=round(xr*10000)/10000;
n=-4*N0/2:4*N0/2-1;

subplot(1,2,1);plot2d3(n,repmat(x,1,4));
set(gca(),"y_location","middle","zoom_box",[-40 0 40 1.1]);
title("sampled gate function","fontsize",4);
subplot(1,2,2);plot2d3(n,repmat(xr,1,4),[5]);
set(gca(),"x_location","middle","y_location","middle","zoom_box",[-40 -0.3 40 0.3]);
title("Dn","fontsize",4);
