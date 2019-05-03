
clc
clear
close;

s=%s;
h=syslin('c',((20*s^2+2000*s)/(s^2+12*s+20)))//transfer function
bode(h,0.1,100);
