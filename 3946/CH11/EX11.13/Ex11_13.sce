//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
T2 = 25;         //(No. of teeth on pinion)
T1 = 100;        //(No. of teeth on spur wheel)
r = 50;          //(mm)(Radius of drum)
l = 300;         //(mm)(Length of the handle)
P = 20;          //(N)(Effort)
W = 300;         //(N)(Load lifted)

VR = (l/r) * (T1/T2);        //(Velocity ratio)
MA = W/P;                    //(Mechanical advantage)
eta = MA/VR;                   //(Efficiency)
printf("Efficiency = %.2f %%\n",eta * 100);

//Effect of friction:
Fload = (P * VR) - W;           //(N)
Feffort = P - (W/VR);           //(N)
printf("It means that if the machine would have been ideal(i.e. without friction) then it could lift an extraload of %.2f N with the same effort of 20 N. Or it could have required %.2f N less force to lift the same load of 300 N.",Fload,Feffort);
