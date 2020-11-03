//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
no = 40;     //(No. of oscillations/min)
l = 0.45;    //(m)(Distance of centre of gravity from the centre of oscillation)
AB = 1.5;    //(m)(Length of AB)
g = 9.81;    //(m/s^2)(Accn due to Gravity)

//Radius of gyration:
//Let kG = Radius of gyration about an axis through centre of gravity and parallel to the knife edge,
//L = Length of the equivalent simple pendulum.

//Frequency of the pendulum:
n = no/60;     //(Hz)

//Time period:
T = 1/n;      //(s)

//Also;
//T = (2*%pi)*sqrt(L/g);
L = (T^2 * g)/(2*%pi)^2;      //(m)

//And;
//L = l + kG^2/l;
kG = sqrt((L - l)*l) * 1000;    //(mm)
printf("Radius of gyration about an axis through centre of gravity and parallel to the knife edge = %.2f mm\n",kG);    //The answers vary due to round off error

//No. of oscillations per minute:
h = AB - l;     //(m)

//Length of the equivalent simple pendulum:
L = h + (kG/1000)^2/h;       //(m)

//No. of oscillations per second of the pendulum when supported at B:
n1 = (1/(2*%pi))*sqrt(g/L);

//No. of oscillations per minute:
N = n1 * 60;
printf("No. of oscillations per minute = %.2f",N);
