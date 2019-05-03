
clc
clear
close;

s=%s;
h=syslin('c',((10*s+1000)/(s^2+2*s+100)))//transfer function
bode(h,0.1,100);
