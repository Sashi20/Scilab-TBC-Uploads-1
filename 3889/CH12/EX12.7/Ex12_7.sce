//Example 12.7
//page 809
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter:Control System Analysis Using State Variable Methods
xdel(winsid())//close all graphics Windows
clear;
clc;


s=%s;
A=[-1 1; -1 -10]
B=[0;10]
C=[1;0]'
D=[0]
t=0:0.5:10
H=syslin('c',A,B,C,D)
H1=csim('step',t,H)
H2=ss2tf(H)
disp(H2,'Transfer function =')
plot(H1)
title('Step response of system')
