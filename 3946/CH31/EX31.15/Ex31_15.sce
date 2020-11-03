//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
M = 20;     //(kg)(Mass of roller)
m = 10;     //(kg)(Mass of hanging body B)
g = 9.8;    //(m/s^2)(Accn due to Gravity)

//3*k^2 = 0.5*r^2

//Acceleration on the horizontal plane:
//a = (m*g)/[M + 2*m + M*k^2/r^2];
a = [m*g]/[M + 2*m + M*0.5];    //(m/s^2)
printf("Acceleration on the horizontal plane = %.2f m/s^2",a);
