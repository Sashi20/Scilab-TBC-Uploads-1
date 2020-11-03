//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
N = 10;     //(No. of oscillation/min)
y = 6;      //(cm)(Displacement)
//v = 0.6*Vmax

//No. of oscillations/sec:
Nsec = 10/60;

//Time-period:
T = 1/Nsec;       //(s)

//Angular velocity:
omega = (2 * %pi)/T;        //(rad/sec)

//Linear velocity:
//v = W * sqrt(r^2 - y^2)
//0.6 * W * r = W * sqrt(r^2 - (8)^2)
r = sqrt(64/0.64);     //(cm)
printf("Amplitude = %.2f cm\n",r);

//Maximum acceleration of the particle:
Amax = omega^2 * r;          //(cm^2/s)
printf("Maximum acceleration of the particle = %.2f cm^2/s\n",Amax);

//Speed of the particle when it is 6 cm from the centre of oscillation:
v = omega * sqrt(r^2 - y^2);      //(cm/s)
printf("Speed of the particle when it is 6 cm from the centre of oscillation = %.2f cm/s",v);
