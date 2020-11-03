//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 4;        //(kg)(Mass)
n = 2;        //(Hz)(Frequency)
//Let s = Stiffness of the spring.

//Periodic time:
t = 1/n;         //(s)

//Also, periodic time:
//t = 2*%pi * sqrt(m/s);
s = ((2*%pi)^2 * m)/t^2;       //(N/m)
printf("Stiffness of the spring = %.2f N/m\n",s);
