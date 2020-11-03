//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
u = 7.5;      //(m/s)(Initial velocity)
a = 0.5;      //(m/s^2)(Acceleration)
t = 12;       //(s)(Time taken)

//Distance travelled:
s = u*t + (1/2)*a*t^2;          //(m)
printf("Distance travelled by the train = %.2f m",s);
