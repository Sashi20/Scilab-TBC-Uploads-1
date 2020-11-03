//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
gp = 301;          //(Gravity at pole)
ge = 300;          //(Gravity at the equator)

//Change in Gravity:
dg = ge - gp;

//Let dn = No. of seconds the pendulum will lose in one day.

//No. of seconds in one day or 24 hours:
n = 24 * 60 * 60;       //(s)

//Also,
//dn/n = dg/(2*g)

dn = (dg * n)/(2*gp);    //(s)
printf("No. of seconds the pendulum will lose in one day = %.2f s",dn);
