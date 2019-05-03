clc
clear
close

wc=10^5;
[xm1,fr1]=frmag([0.3142 0], [1 -0.7304],4097);//finding fr response from transfer functions

plot(fr1,xm1,'r');
zoom_rect([0 0 0.5 1.2])
title("frequency_response of Low pass filter","fontsize",4)
legend("wc=10^5");
