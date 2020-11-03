//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
//Considering the downward motion of the stone:
u = 0;       //(Initial velocity)

//Let t = Time taken by the stone to reach the bottom of the well.
//Depth of the well:
//s = u*t + (1/2)*g*t^2 = 4.9*t^2;   -(1)

//Time taken by sound to t=reach the top:
//t = (Depth of well)/(Velocity of sound) = 4.9*t^2/350;            -(2)

//Since total time = 4 seconds
//4.9*t^2 + 350*t - 1400 = 0
//Taking positive value:
p = poly([-1400 350 4.9],'t','c');
t = roots(p);
t = t(2);       //(Taking positive value for time)

//Substituting the value of t in equation (1):
s = 4.9*t^2;        //(m)

printf("Depth of the well = %.2f m",s);    //The answers vary due to round off error
