//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
t = poly(0,"t");
//Given:
s = 5*t + 2*t^2;

m = 10;      //(kg)(Mass)

//Differentiating both sides w.r.t. t:
v = derivat(s);

//Again differentiating both sides w.r.t. t:
a = derivat(v);
a = coeff(a)
//Force:
F = m * a;
mprintf("Force responsible for the motion = %.2f N",F);
