//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 3;        //(kg)(Mass of the body)
delta = 0.012;    //(m)(Deflection)
x = 0.025;    //(m)(Displacement)
g = 9.8;      //(m/s^2)(Accn due to Gravity)

//No. of oscillations of the body:
n = (1/(2*%pi)) * sqrt(g/delta);    //(Hz)
printf("No. of oscillations of the body = %.2f Hz\n",n);

//Maximum force in the spring:

//Angular velocity of the body:
omega = sqrt(g/delta);          //(rad/s)

//Maximum acceleration:
amax = omega^2 * x;         //(m/s^2)

//Maximum inertia force:
MIF = m * amax;        //(N)

//Maximum force in the spring:
MF = (m * g) + MIF;    //(N)
printf("Maximum force in the spring = %.2f N",MF);
