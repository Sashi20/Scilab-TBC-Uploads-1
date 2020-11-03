//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 0.05;    //(tonnes)(Mass)
s1 = 4;       //(kN/m)(Stiffness of first spring)
s2 = 6;       //(kN/m)(Stiffness of second spring)
r = 0.04;     //(m)(Displacement)
g = 9.8;      //(m/s^2)(Accn due to Gravity)

//(a) When the springs are connected in series:
printf("When the springs are connected in series:\n");
//Spring constant of an equivalent spring:
s = (s1*s2)/(s1 + s2);     //(kN/m)

//Deflection of the spring:
delta = (m * g)/s;    //(m)

//Period of vibrations:
t = (2*%pi) * sqrt(delta/g);     //(s)
printf("Period of vibrations = %.2f s\n",t);    //The answers vary due to round off error

//Angular velocity of the block:
omega = (2*%pi)/t;       //(rad/s)

//Maximum velocity:
vmax = omega*r;         //(m/s)
printf("Maximum velocity = %.2f m/s\n",vmax);

//Maximum acceleration:
amax = omega^2 * r;     //(m/s^2)
printf("Maximum acceleration = %.2f m/s^2\n\n",amax);

//(b) When the springs are connected in parallel:
printf("When the springs are connected in parallel:\n");
//Spring constant equivalent:
s = s1 + s2;      //(kN/m)

//Deflection of the spring due to block of weight 0.49 kN:
delta = (m * g)/s;              //(m)

//Period of vibrations:
t = (2*%pi) * sqrt(delta/g);    //(s)
printf("Period of vibrations = %.2f s\n",t);

//Angular velocity of the block:
omega = (2*%pi)/t;             //(rad/s)

//Maximum velocity:
vmax = omega * r;        //(m/s)
printf("Maximum velocity = %.2f m/s\n",vmax);

//Maximum acceleration:
amax = omega^2 * r;     //(m/s^2)
printf("Maximum acceleration = %.2f m/s^2",amax);    //The answers vary due to round off error
