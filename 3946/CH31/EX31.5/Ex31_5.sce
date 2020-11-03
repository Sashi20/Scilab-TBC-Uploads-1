//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
h = 0.04;     //(m)(Thickness of the flywheel)
d = 0.2;      //(m)(Width of the flywheel)
r = 1;        //(m)(Mean radius)
omega0 = 300/60 * 2*%pi;   //(rad/s)(Initial angular speed)
Fc = 100;     //(N-m)(Frictional couple)
rho = 7900;   //(kg/m^3)(Density of steel)

//Let alpha = Constant angular acceleration of flywheel,
//t = Time taken by the flywheel in coming to rest.

//Volume of the flywheel:
V = %pi * 2 * d *h;    //(m^3)

//Mass of the flywheel:
M = V * rho;        //(kg)

//Mass moment of inertia:
I = M*r^2;         //(kg-m^2)

//Frictional couple:
//Fc = I*alpha;
alpha = Fc/I;      //(rad/s^2)

//Using: W = W0 - alpha*t (retardation);
omega = 0;
t = (omega0 - omega)/alpha;   //(s)
printf("Time taken by the flywheel in coming to rest = %.2f s",t);    //The answers vary due to round off error
