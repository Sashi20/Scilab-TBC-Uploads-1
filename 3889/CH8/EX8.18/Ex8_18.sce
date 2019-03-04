  //Example 8.18
//page 576
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter:The Nyquist Stability Criterion and Stability Margins
//Topic: Bode Plot Stability margins
xdel(winsid())//close all graphics Windows
clear;
clc;

s=poly(0,'s')
num= (10^(40/20))*(1-(s/10))
den=s*(1+s)
G=syslin('c',num/den)
bode(G,0.01,10000,'rad')
title('Bode plot of 100(1-0.1s)/(s)*(1+s)')
a=gca()
a.parent.background=8; 
