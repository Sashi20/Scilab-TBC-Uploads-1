clc
clear
close;

N0=32; //samples no
T0=4;
T=T0/N0;
x=[ones(1,4) 0.5 zeros(1,23) 0.5 ones(1,3)]';
Xr=fft(x);
r=-N0/2:N0/2-1;
omega=r*2*%pi/T0;
Xr_abs=fftshift(abs(Xr));
X_phase=fftshift(phasemag(Xr)*%pi/180);

figure(1)
subplot(1,3,1);plot2d3([-32:63],repmat(x',1,3));
set(gca(),"zoom_box",[-10 0 10 1.1]);
subplot(1,3,2);plot(omega,Xr_abs,'b');
title("|X(w)|","fontsize",4);
set(gca(),"y_location","middle","zoom_box",[-25 0 25 8]);
subplot(1,3,3);plot(omega,X_phase,'b');
title("angle(X(w))","fontsize",4);
set(gca(),"zoom_box",[-25 -0.5 25 3.5],"y_location","middle");
