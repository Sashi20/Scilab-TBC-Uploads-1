//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 0.5;     //(kg)(Mass of the body)
h = 0.3;     //(m)(Distance of centre of oscillation from the centre of gravity)
IG = 0.125;  //(kg-m^2)(Moment of inertia about centroidal axis)

//Let kG = Radius of gyration about the centroidal axis.

//IG = m * kG^2;
kG = sqrt(IG/m);

//Length of equivalent simple pendulum:
L = h + kG^2/h;      //(m)
printf("Length of equivalent simple pendulum = %.2f m",L);
