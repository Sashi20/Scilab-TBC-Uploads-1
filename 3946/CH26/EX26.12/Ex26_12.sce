//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
dn = -20;      //(No. of seconds the pendulum loses in one day)
r = 6400;      //(km)(Radius of the earth)

//Let h = Height of mountain in km.

//No. of seconds in one day or 24 hours:
n = 24 * 60 * 60;      //(s)

//Also;
//dn/n = - h/r;
h = - (dn/n) * r;        //(km)
printf("Height of mountain in km = %.2f km",h);
