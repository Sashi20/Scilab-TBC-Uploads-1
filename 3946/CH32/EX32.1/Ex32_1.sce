//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
M = 8;    //(tonnes)(Mass of the truck)
r = 0.4;  //(m)(Radius of each wheel)
m = 1;    //(tonne)(Mass of each pair of wheels with axles)
k = 0.3;  //(m)(Radius of gyration of each wheel)
x = 1.2;  //(m)(Half of the horizontal distance between the centre of axles)
h = 1.5;  //(m)(Height of the centre of gravity of the truck above road level)
P = 5.4;  //(kN)(Tractive force)
g = 9.8;  //(m/s^2)(Accn due to Gravity)

//(i) Acceleration of the vehicle:
//Mass moment of inertia of each pair of wheels:
I = m*k^2;        //(t-m^2)

//Acceleration of the vehicle:
a = [P/(I/r^2 + M)];     //(m/s^2)
printf("Acceleration of the vehicle = %.2f m/s^2\n",a);

//(ii) Frictional resistance:
F = (I*a)/(2*r^2);      //(kN)
printf("Frictional resistance = %.2f kN\n",F);

//(iii) Reactions on the wheels:
//Reaction of the front pair of wheels:
RF = (1/2)*[M*g + (h/x)*[(I*P)/(I + M*r^2)]];    //(kN)
printf("Reaction of the front pair of wheels = %.2f kN\n",RF);

//Reaction on the rear pair of wheels:
RR = (1/2)*[M*g - (h/x)*[(I*P)/(I + M*r^2)]];    //(kN)
printf("Reaction on the rear pair of wheels = %.2f kN",RR);
