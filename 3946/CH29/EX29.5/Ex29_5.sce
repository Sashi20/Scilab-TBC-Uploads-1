//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
N = 240;        //(r.p.m.)(No. of revolution)
r = 0.2625;     //(m)(Radius of balancing mass)

ad = 1575;
m = ad/(r*1000);     //(kg)
printf("Mass = %.2f kg\n",m);

theta = 263;    //(Degrees)(By measuring)
printf("theta = %.2f degrees\n",theta);

//Angular velocity of the spindle:
omega = (2 * %pi * N)/60;    //(rad/s)

//Unbalanced force on the spindle:
P = m * omega^2 * r;         //(N)
printf("Unbalanced force on the spindle = %.2f N",P);    //The answers vary due to round off error
