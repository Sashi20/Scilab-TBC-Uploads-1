  //Example 8.10
//page 553
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter:The Nyquist Stability Criterion and Stability Margins
//Topic: Bode Plot
xdel(winsid())//close all graphics Windows
clear;
clc;
s=poly(0,"s")
P=10*(s/2+1)/((s^2)*(s+1))
Q=syslin('c',P)
f=figure()
bode(Q,0.01,100,"rad")
title('Bode Magnitude plot for Example 8.10')
a=gca()
a.parent.background=8; 
b=gce();
b.visible="off"
