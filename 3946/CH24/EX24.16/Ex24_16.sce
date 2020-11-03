//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m1 = 500;       //(kg)(Gross mass of elevator)
g = 9.8;        //(m/s^2)(Accn due to Gravity)

//Pull in the cable, during accelerated motion:
//Considering motion with constant acceleration:
u = 0;        //(Initial velocity)
v = 2;        //(m/s)(Final velocity)
s = 3;        //(m)(Distance travelled)

//Let a1 = Constant acceleration.
//Using: v^2 = u^2 + 2 * a1 * s;
a1 = v^2/(2*s);      //(m/s^2)

//Force required to produce this acceleration:
F1 = m1 * a1;        //(N)

//Total pull in the cable:
R = (m1 * g) + F1;       //(N)
printf("Total pull in the cable = %.2f N\n",R);    //The answers vary due to round off error

//Force transmitted by the man during the decelerating motion:
u = 2;       //(m/s)(Initial velocity)
v = 0;       //(Final velocity)
t = 2;       //(s)(Time)
m2 = 75;     //(kg)(Mass of man)

//Let a2 = Constant deceleration

//Using: v = u + a2*t;

a2 = u/t;          //(m/s^2)

//Force transmitted by the man during deceleration motion:
R = m2 * (g - a2);          //(N)
printf("Force transmitted by the man during deceleration motion = %.2f N",R);
