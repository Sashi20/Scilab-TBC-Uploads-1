//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
r = 0.1;      //(m)(Amplitude)
N = 2;        //(vib/sec)(Frequency of body)

//Angular velocity:
omega = (2 * %pi * N);      //(rad/s)

//Maximum velocity:
Vmax = r * omega;           //(m/s)
printf("Maximum velocity = %.2f m/s\n",Vmax);    //The answers vary due to round off error

//Maximum acceleration:
Amax = omega^2 * r;         //(m/s^2)
printf("Maximum acceleration = %.2f m/s^2",Amax);
