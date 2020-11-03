//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
mr = 1;     //(kg)(Mass of rod)
mB = 2.5;   //(kg)(Mass at B)
l = 0.6;    //(m)(Length of rod)
s = 1800;    //(N/m)(Stiffness of spring)

//Let n = Frequency of oscillation,
//theta = Small angular displacement of the rod,
//alpha = Angular acceleration of the rod AB.

//Mass moment of inertia of the system about A:
IA = mr*(l)^2/3 + mB*(l)^2;     //(kg-m^2)

//Extension of the spring:
//d = 0.3*theta;

//Restoring force = s*d;

//Restoring moment about A = Restoring force * 0.3 = 162*theta;     -(1)

//Disturbing moment about A = IA * alpha = 1.02 * alpha    N-m;     -(2)

//Equating (1) and (2):
//Let alpha/theta = AT;
AT = (s*l/2*l/2)/IA;

//Frequency of oscillation:
n = (1/(2*%pi))*sqrt(AT);        //(Hz)
printf("Frequency of oscillation = %.2f Hz",n);
