//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
d = 50;        //(mm)(Diameter)
Ixx = (%pi/64) * (d^4);         //(mm^4)
printf("Moment of Inertia = %.2f mm^4",Ixx);  //The answers vary due to round off error
