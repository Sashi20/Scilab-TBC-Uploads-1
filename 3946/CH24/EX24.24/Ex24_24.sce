//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
alpha = 10;          //(Degrees)
a = 1;               //(m/s^2)(Acceleration)
m = 500;             //(kg)(Mass of the body placed on the truck)
mu = 0.4;             //(Coefficient of friction)

//Stability of the load:

//Force caused due to deceleration:
P1 = m * a;          //(N)

//Component of the load along the plane:
P2 = m*g*sind(alpha);         //(N)

//Total force, which will cause slipping:
P = P1 + P2;         //(N)

//Normal reaction:
R = m*g*cosd(alpha);      //(N)

//Force of friction:
F = mu*R;                  //(N)

printf("Since the force of friction %.2f is more than the force which will cause slipping %.2f , therefore the load will not slip.\n",F,P);

//Factor of safety against slipping for this load:
Factor = F/P;
printf("Factor of safety against slipping for this load = %.2f",Factor);
