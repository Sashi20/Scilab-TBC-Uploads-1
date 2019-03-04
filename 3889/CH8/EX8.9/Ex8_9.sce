  //Example 8.9
//page 551
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter:The Nyquist Stability Criterion and Stability Margins
//Topic: Bode Plot
xdel(winsid())//close all graphics Windows
clear;
clc;
s=poly(0,"s")
P=200*(s+1)/((s+10)^2)
Q=syslin('c',P)
f=figure()
bode(Q,0.05,100,"rad");
title('Bode Magnitude plot for Example 8.9')
a=gca()
a.parent.background=8; 
b=gce();
b.visible="off"


