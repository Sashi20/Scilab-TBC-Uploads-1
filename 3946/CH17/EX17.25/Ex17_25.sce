//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
//Considering the motion of the stone:
u = 0;       //(Initial velocity)
g = 9.8;     //(m/s^2)(Accn due to Gravity)

//(a)Time taken by the stone to hit the cage:
//t = Time taken by the stone to hit the cage.

//Distance travelled by the stone before the impact:
//s = u*t + (1/2)*g*t^2 = 4.9*t^2;      -(1)

//Considering motion of the cage for the first 25 metres:
//Let t = Time taken by the cage to travel 25 m.
u = 0;       //(Initial velocity)
a = 0.5;     //(m/s^2)(Acceleration)
s = 25;      //(m)(Distance)
t = sqrt(s/(2*a));     //(s)

//Total time taken by the cage before impact = (10 + t) s
//Distance travelled by the cage in (10 + t) s:
// s = 0.25*(10 + t)^2;         -(2)

//(1) = (2):
//4.65*t^2 - 5*t - 25 = 0;
//Taking positive value:
p = poly([-25 -5 4.65],'t','c');
t = roots(p);
t = t(1);         //(Taking positive value for time)
printf("Time taken by the stone to hit the cage = %.2f s\n",t);

//(b) Distance travelled by the cage before impact:
//Substituting the value of t in equation (1):
s = (1/2)*a*(10 + t)^2;     //(m)
printf("Distance travelled by the cage before impact = %.2f m",s);    //The answers vary due to round off error
