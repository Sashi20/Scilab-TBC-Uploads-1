//Example 12.4
//page 789
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter:Control System Analysis Using State Variable Methods
xdel(winsid())//close all graphics Windows
clear;
clc;
s=%s;
A=[0 1 0; 0 -1 1; 0 -1 -10]
B=[0 ; 0 ; 10]
C=[1 0 0]
//D=[0]
Y=syslin('c',A,B,C,[0])
[Ds,Num,Den]=(ss2tf(Y))
disp(clean(Ds+(Num/Den)),'G(s)=')//clean() is used to round off small entries to zero
