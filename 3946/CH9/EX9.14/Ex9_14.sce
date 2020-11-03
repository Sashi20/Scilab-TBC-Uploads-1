//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
d = 75;            //(mm)(Mean diameter of square thread)
r = 37.5;          //(mm)(Mean radius)
p = 15;            //(mm)(Pitch)
mu = 0.05;          //(Coefficient of friction)
phi = atand(mu);    //(Degrees)
Re = 360;          //(mm)(Radius of effort arm)
W = 6000;          //(N)(Load lifted)

//(i)Tangential force to be applied at the jack:
alpha = atand(p/(%pi * d));     //(Degrees)

//Tangential force required at the mean radius to lift the load:
P = W * tand(alpha + phi);           //(N)

//The effort applied at a radius of 36 cm:
P1 = (P * r)/Re;         //(N)
printf("The effort applied at a radius of 36 cm = %.2f N\n",P1);    //The answers vary due to round off error

//(ii)Self-locking of the screw:

//Efficiency of the screw jack:
eta = tand(alpha)/tand(alpha + phi);
printf("Efficiency of the screw jack = %.2f %%\n",eta * 100);    //The answers vary due to round off error
printf("Since efficiency of the screw jack is more than 50 %%, therefore it is not self-locking\n");

//Torque, which must be applied to keep the load from descending:
//Force that must be applied at the mean radius to keep the load from descending:
P2 = W * tand(alpha - phi);         //(N)

//Torque, which must be applied to keep the load from descending:
T = P2 * r;            //(N-m)
printf("Torque, which must be applied to keep the load from descending = %.2f N-mm",T);      //(N-mm)(Answer in textbook is wrong)

