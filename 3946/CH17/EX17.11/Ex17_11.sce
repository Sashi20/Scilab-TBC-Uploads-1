//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
u = 0;        //(Initial velocity)
t = 2.8;      //(s)(Time taken)
g = 9.8;      //(m/s^2)(Accn due to Gravity)

//Height of the building:
s = u*t + (1/2)*g*t^2;      //(m)
printf("Height of the building = %.2f m",s);
