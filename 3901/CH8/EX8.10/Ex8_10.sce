clc
clear
close;

N0=32; //samples no
T0=4;
T=T0/N0;
x=[ones(1,4) 0.5 zeros(1,23) 0.5 ones(1,3)]';
Xr=fft(x);
Hr=[ones(1,8) 0.5 zeros(1,15) 0.5 ones(1,7)]';
Yr=Xr.*Hr;
y=ifft(Yr);
r=-N0/2:N0/2-1;
n=r;
omega=r*2*%pi/T0;
y=fftshift(y);
figure(1)
subplot(1,3,1);plot2d3([-32:63],repmat(x',1,3));
set(gca(),"zoom_box",[-10 0 10 1.1],"y_location","middle");
title("x(t)=8*rect(t)","fontsize",4);
subplot(1,3,2);plot2d3([-32:63],repmat(Hr',1,3));
title("|H(w)|","fontsize",4);
set(gca(),"y_location","middle","zoom_box",[-10 0 10 1.1]);
subplot(1,3,3);plot(omega,y,'b');plot2d3(omega,y,[5]);
title("Filtered_output=y(t)","fontsize",4);
set(gca(),"zoom_box",[-25 -1.1 25 1.1],"y_location","middle","x_location","middle");
