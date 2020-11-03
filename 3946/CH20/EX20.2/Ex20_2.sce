//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
x = 4;     //(m)(Width of ditch)
s = 2;     //(m)(Vertical distance between A and B)
g = 9.8;   //(m/s^2)(Accn due to Gravity)
u = 0;     //(Initial velocity)
//Minimum velocity of motor cycle at A:
//Using s = u*t + (1/2)*g*t^2;
t = sqrt(s/((1/2)*g));    //(s)

//Minimum velocity of the motorcycle at A:
v = (x/t);      //(m/s)
printf("Minimum velocity of the motorcycle at A = %.2f km.p.h\n",v*(3600/1000));      //(Converting m/s to km.p.h)

//Inclination and magnitude of the velocity of motor vehicle just after clearing the ditch(i.e., at B):
V = u + g*t     //(Final velocity)

theta = atand(v/V);     //(Degrees)
printf("Inclination of the velocity with the vertical = %.2f degrees\n",theta);    //The answers vary due to round off error

//Magnitude of velocity:
R = sqrt(v^2 + V^2);     //(m/s)
printf("Magnitude of the velocity of the motor cycle just after clearing the ditch = %.2f km.p.h.",R*(3600/1000));
