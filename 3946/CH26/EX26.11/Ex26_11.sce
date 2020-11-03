//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
t = 1;         //(s)(Time)
dn = -5;       //(No. of second the pendulum loses in one day)
g = 9.8;       //(m/s^2)(Accn due to Gravity)

//Length of the pendulum which will have one beat per second:
//Let l = Length of the pendulum.

//Time for one beat:
//t = (%pi)*sqrt(l/g);

l = g/(t*(%pi)^2) * 1000;        //(mm)
printf("Length of the pendulum = %.2f mm\n",l);    //(Answer rounded off in book)

//Length by which the pendulum should be shortened:
//Let dl = Length in mm by which the pendulum should be shortened, to keep the correct time.

//No. of seconds in one day or 24 hours:
n = 24 * 60 * 60;        //(s)

//Also,
//dn/n = - (dl/2*l);
dl = - (dn * 2 * l)/n;    //(mm)
printf("Length in mm by which the pendulum should be shortened, to keep the correct time = %.2f mm",dl);
