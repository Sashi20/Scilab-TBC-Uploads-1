//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
w = 240;     //(kN)(Weight of empty wagon)
W = 320;     //(kN)(Load)
delta = 0.08;    //(m)(Deflection)
g = 9.8;     //(m/s^2)(Accn due to Gravity)

//(i) Period of vibrations when the wagon is empty:
delta_1 = (delta/W) * w;      //(m)

//Period of vibrations:
t1 = (2*%pi) * sqrt(delta_1/g);      //(s)
printf("Period of vibrations when the wagon is empty = %.2f s\n",t1);

//(ii) Period of vibrations when the wagon is loaded:
//Total load on the springs:
TL = w + W;     //(kN)

//Deflection of the spring when the wagon is loaded:
delta_2 = (delta/W) * TL;     //(m)

//Period of vibrations:
t2 = (2*%pi) * sqrt(delta_2/g);      //(s)
printf("Period of vibrations when the wagon is loaded = %.2f s\n",t2);

//(b) Velocity of the railway wagon when it is empty:
r = 0.1;    //(m)(Amplitude)
y = 0.04;   //(m)(Displacement)

//Angular velocity of the wagon:
omega = (2*%pi)/t1;         //(rad/s)

//Velocity:
v = omega * sqrt(r^2 - y^2);       //(m/s)
printf("Velocity of the railway wagon when it is empty = %.2f m/s",v);
