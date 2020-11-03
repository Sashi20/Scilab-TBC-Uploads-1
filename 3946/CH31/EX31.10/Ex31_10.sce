//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m1 = 15;      //(kg)(Mass of the first body)
m2 = 5;       //(kg)(Mass of the second body)
r = 0.2;      //(m)(Radius of the pulley)
M = 10;       //(kg)(Mass of the pulley)
k = 0.15;     //(m)(Radius of gyration)
g = 9.8;      //(m/s^2)(Accn due to Gravity)

//Acceleration of the masses:
//Mass moment of inertia of the pulley:
I = M*k^2;      //(kg-m^2)

//Aceleration of the masses:
a = (g*(m1-m2))/[I/r^2 + (m1 + m2)];    //(m/s^2)
printf("Acceleration of the masses = %.2f m/s^2\n",a);

//Pulls on either side of the rope:
//!5 kg mass:
P1 = m1*(g - a);     //(N)
printf("Pull in the rope with 15 kg of mass = %.2f N\n",P1);    //(The answers vary due to round off error)

//5 kg mass:
P2 = m2*(a + g);    //(N)
printf("Pull in the rope with 5 kg of mass = %.2f N",P2);
