//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
M = 1200;    //(kg)(Mass of the vehicle)
Tr = 1800;   //(N)(Tractive force)
h = 1;       //(m)(Height of the c.g. above road surface)
y = 1 - 0.75;    //(m)(Distance between the centre of gravity of the vehicle and the point through which the tractive force act)
x = 1.2;        //(m)(Half of the horizontal distance between centre of wheels)
g = 9.8;        //(m/s^2)(Accn due to Gravity)

//(i) Acceleration of the vehicle:
//RF + RR = M*g = 11760 N             -(i)

//Let a = Acceleration of the vehicle.

//Total force of resistance:
//FF + FR =(1/12)*(RF + RR) = 980 N

//Net tractive force:
P = Tr - 980;      //(N)

//Net accelerating force:
//P = M*a;
a = P/M;         //(m/s^2)
printf("Acceleration of the vehicle = %.2f m/s^2\n",a);

//(ii) Normal reactions at the front and rear pair of wheels:
//Taking moments about the centre of gravity(G) of the vehicle and equating the same:
//RF - RR = 442 N              -(ii)

//(i) + (ii):
RF = (11760 + 442)/2;      //(N)

//Substituting the value of RF in equation (i):
RR = 11760 - RF;          //(N)

printf("Normal reaction at the front wheel = %.2f N\n",RF);
printf("Normal reaction at the rear wheel = %.2f N",RR);    //The answer provided in the textbook is wrong
