//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 0.4;    //(m)(Length of the handle)
r = 0.1;    //(m)(Radius of the drum)
TA = 20;    //(No. of teeth on wheel A)
TB = 80;    //(No. of teeth on wheel B)
TC = 20;    //(No. of teeth on wheel C)
TD = 100;   //(No. of teeth on wheel D)
P = 10;     //(N)(Effort applied)
eta = 0.6;    //(Efficiency of the system)

//Let W = Load that can be raised by the drum.

//Velocity ratio of the system:
VR = (l/r)*(TB/TA)*(TD/TC);

//Mechanical advantage:
//MA = W/P = W/10;

//Efficiency:
//n = MA/VR;
//0.6 = (W/10)/80;
W = eta * VR * P;    //(N)
printf("Load that can be raised by the drum = %.2f N",W);
