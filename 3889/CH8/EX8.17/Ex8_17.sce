  //Example 8.17
//page 575
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter:The Nyquist Stability Criterion and Stability Margins
//Topic: Bode Plot Stability margins
xdel(winsid())//close all graphics Windows
clear;
clc;

s=poly(0,'s')
num= 10^(25/20)
den=(1+(s/15))*(1+(s/150))
G=syslin('c',num/den)
bode(G,0.01,10000,'rad')
title('Bode plot of 17.8/(1+(s/15))*(1+(s/150))')
a=gca()
a.parent.background=8; 
