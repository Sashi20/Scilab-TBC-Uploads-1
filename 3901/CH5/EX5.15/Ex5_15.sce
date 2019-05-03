clc
clear
close

a=[0.3 0.6 0.95];
[xm1,fr1]=frmag([1+a(1)^2 0 1+a(1)^2], [2 0 2*a(1)^2],4097);

[xm2,fr2]=frmag([1+a(2)^2 0 1+a(2)^2], [2 0 2*a(2)^2],4097);

[xm3,fr3]=frmag([1+a(3)^2 0 1+a(3)^2], [2 0 2*a(3)^2],4097);

plot(fr1,xm1,'k');
plot(fr2,xm2,'r');
plot(fr3,xm3,'b');
zoom_rect([0 0 0.5 1])
title("frequency_response of Bandstop filter for different a values","fontsize",4)
legend("a=0.3","a=0.6","a=0.95",[3]);
