//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
r = 60;        //(mm)(Radius)
h = 30;        //(mm)(Height)
//Let O be the centre of the given sphere and ABC is the segment of this sphere as shown in Fig. 6.21.
//As the section is symmetrical about X-X axis, therefore its centre of gravity lies on this axis.
//Let O be the reference point.
//We know that centre of gravity of the segment of sphere:
x_bar = (3 * (2*r - h)^2)/(4 * (3*r - h));     //(mm)
printf("Centre of gravity = %.2f mm",x_bar);
