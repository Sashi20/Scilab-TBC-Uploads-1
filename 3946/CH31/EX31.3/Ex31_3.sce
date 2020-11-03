//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
k = 0.9;    //(m)(Radius of gyration of flywheel)
N = 360;    //(r.p.m.)(Mean speed of the flywheel)
E = 30000;  //(N-m)(Fluctuation of energy)

//(i) Moment of inertia of the wheel:
//Let I = Moment of inertia of the wheel.

//Maximum speed of the wheel:
N1 = N + (0.02 * N);    //(r.p.m.)

//Minimum speed of the wheel:
N2 = N - (0.02 * N);    //(r.p.m.)

//Fluctuation of energy:
//E = %pi^2/900 * I * N * (N1 -N2);
I = (E * 900)/(%pi^2 * N * (N1 - N2));   //(kg-m^2)
printf("Moment of inertia of the wheel = %.2f kg-m^2\n",I);

//(ii) Mass of the wheel:
M = I/k^2;     //(kg)
printf("Mass of the wheel = %.2f kg",M);
