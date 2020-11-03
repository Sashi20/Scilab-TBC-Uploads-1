//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
u = -4.9;       //(m/s)(Initial velocity)
t = 2;          //(s)(Time taken)
g = 9.8;        //(m/s^2)(Accn due to gravity)

//Height of the bridge:
h = u*t + (1/2)*g*t^2;         //(m)

printf("Height of the bridge = %.2f m",h);
