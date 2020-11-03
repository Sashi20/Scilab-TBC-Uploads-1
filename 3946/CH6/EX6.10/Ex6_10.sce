//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
//Let h = Height of the cylinder in mm.

//(i) Right circular cylinder:
//w1 = rho1 * (%pi/4) * d^2 * h;
//y1 = 60 + 0.5*h          (mm)

//(ii) Hemisphere:
//w2 = rho2 * (2*%pi/3) * r^3;
r = 60;                  //(mm)
y2 = (5 * r)/8;         //(mm)

//Distance between centre of gravity of the combine body from P(y):
// 60 = (w1*y1 + w2*y2)/(w1 + w2);
//Solving:
h = sqrt(6480000/1800);     //(mm)
printf("Height of the cylinder in mm = %.2f mm",h);
