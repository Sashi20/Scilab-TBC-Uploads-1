//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
M = 8000;       //(kg)(Mass of the flywheel)
omega0 = 0;         //(Initial angular speed)
omega = 6*%pi;      //(rad/s)(Final angular speed)
t = 180;        //(s)(Time)
k = 0.6;        //(m)(Radius of gyration of the flywheel)

//Let alpha = Constant angular acceleration of the flywheel.

//Mass moment of inertia of the flywheel:
I = M*k^2;      //(kg-m^2)

//Using: omega = omega0 + alpha*t;
alpha = (omega - omega0)/t;      //(rad/s^2)

//Average torque exerted by the flywheel:
T = I*alpha;             //(N-m)
printf("Average torque exerted by the flywheel = %.2f N-m",T);    //The answers vary due to round off error
