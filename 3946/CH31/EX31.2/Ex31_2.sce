//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
M = 6500;     //(kg)(Mass of flywheel)
k = 1.8;      //(m)(Radius of gyration)
N1 = 120;     //(r.p.m.)(Maximum speed of flywheel)
N2 = 118;     //(r.p.m.)(Minimum speed of flywheel)

//Average speed of the flywheel:
N = (1/2)*(N1 + N2);      //(r.p.m.)

//Mass moment of inertia:
I = M*k^2;     //(kg-m^2)

//Fluctuation of energy:
E = [(%pi^2)/900 * I * N * (N1 - N2)]/1000;     //(kJ)
printf("Fluctuation of energy = %.2f kJ",E);
