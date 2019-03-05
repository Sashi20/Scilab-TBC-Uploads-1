//clear//
//Caption:Ideal solution for zero ISI
//Figure 6.6(b): Ideal Solution for Intersymbol Interference
//SINC pulse
//page 249
rb = 1;
Bo = rb/2;
t =-3:1/100:3;
x = sinc(2*Bo*t);
plot(t,x)
xlabel('t------>');
ylabel('p(t)------->');
title('SINC Pulse for zero ISI')
xgrid(1)
//Result
//Enter the bit rate:1