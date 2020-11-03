//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
v1 = 12;     //(m/s)(Velocity)
y1 = 0.05;   //(m)(Displacement)

v2 = 3;      //(m/s)(Velocity)
y2 = 0.1;    //(m)(Displacement)

//Amplitude of the motion:
//Let r = Amplitude of the motion,
//omega = Angular displacement of the body.

//Velocity of the body:
//v = omega * sqrt(r^2 - y^2)

//Substituting the values in the equation:
//12 = omega * sqrt(r^2 - y1^2)   -(1)
//3 = omega * sqrt(r^2 - y2^2)    -(2)

//Dividing (1) by (2):
r = sqrt(0.1575/15);       //(m)
printf("Amplitude of the motion = %.2f m\n",r);

//Frequency of the motion:
//Substituting the value of r in equation (1):
omega = 12/0.09;     //rad/sec)

//Frequency of motion:
N = omega/(2 * %pi);      //(Hz)
printf("Frequency of motion = %.2f Hz\n",N);

//Acceleration when the displacement is 75 mm:
y = 0.075;       //(m)
a = omega^2 * y;         //(m/s^2)
printf("Acceleration when the displacement is 75 mm = %.2f m/s^2",a);     //The answers vary due to round off error
