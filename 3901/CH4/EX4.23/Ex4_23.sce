
clc
clear
close;

s=poly(0,'s');//polynomial definition
h=syslin('c',(s+0.1)/(s+5));//transfer function
bode(h,0.1,100);//plotting frequency response
