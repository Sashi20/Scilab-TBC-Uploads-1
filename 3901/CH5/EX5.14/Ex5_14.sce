clc
clear
close

gm=[0.83 0.93 1.00];
[xm1,fr1]=frmag([1 0 -1],[1 -sqrt(2)*gm(1) gm(1)^2],4097);
[xm2,fr2]=frmag([1 0 -1],[1 -sqrt(2)*gm(2) gm(2)^2],4097);
[xm3,fr3]=frmag([1 0 -1],[1 -sqrt(2)*gm(3) gm(3)^2],4097);
plot(fr1,xm1,'k');
plot(fr2,xm2,'r');
plot(fr3,xm3,'b');
zoom_rect([0 0 0.3 50])
title("frequency_response of Bandpass filter for different gamma values","fontsize",4)
legend("gamma=0.83","gamma=0.93","gamma=1");
