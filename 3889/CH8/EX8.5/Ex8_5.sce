//Example 8.5
//page 534
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter:The Nyquist Stability Criterion and Stability Margins
xdel(winsid())//close all graphics Windows
clear;
clc;
clf;
s=poly(0,"s")
P=1/(s*(s+3)*(s+5))
Q=syslin('c',P)
f=figure()
nyquist(Q)
xpoly([-1],[0],"lines")
a=gca()
a.parent.background=8; 
title('Nyquist plot of P=1/(s*(s+3)*(s+5))','fontsize',3)
a.x_location="origin"
a.y_location="origin"

zoom_rect([-0.1 -1.5 0.1 1.5])
H=a.children($).children(2);//handle on Nyquist curve of h
tip=datatipCreate(H,[0,0]);

datatipSetOrientation(tip,"upper left");
P1=(1+P)
[r,num]=routh_t(1/P1,1)
[r1,num1]=routh_t(1/P,1)
N=num-num1;
mprintf('Critical point -1+j0 is encircled clockwise %g times by Nyquist plot',num)

