  //Example 8.11
//page 553
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter:The Nyquist Stability Criterion and Stability Margins
//Topic: Bode Plot
xdel(winsid())//close all graphics Windows
clear;
clc;
s=poly(0,"s")
P=200*(s+2)/((s)*(s^2+10*s+100))
Q=syslin('c',P)
f=figure()
bode(Q,0.01,1000,"rad")
//bode_asymp(Q);
title('Bode plot for Example 8.11')
a=gca()
a.parent.background=8; 

