//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all

//Solving by 1st method
//Considering the motion between A and B:
s = 10;     //(m)(Distance travelled)
t = 0.2;    //(s)(Time taken)
g = 9.8;    //(m/s^2)(Accn due to Gravity)

//Let u = Initial velocity of the body at A.
u = (s - (1/2)*s*t^2)/t;    //(m/s)

//Considering the motion from O to A:
u = 0;     //(Initial velocity)
v = 49;    //(m/s)(Final velocity)

s = (v^2 - u^2)/(2*g);    //(m)
printf("The height above the higher point from where it started to fall = %.2f m",s);
