//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
T1 = 90;           //(No. of cogs on the effort wheel)
T2 = 25;           //(No. of teeth on the pinion)
T3 = 40;           //(No. of teeth on the spur wheel)
T4 = 8;            //(No. of cogs on the load wheel)
P = 50;            //(N)(Effort)
eta = 0.75;          //(Efficiency)

VR = (T1/T2) * (T3/T4);    //(Velocity ratio)
//MA = W/P = W/50;         //(Mechanical advantage)

//eta = MA/VR = (W/50)/18;
W = eta * P * VR;            //(Maximum load that can be lifted)
printf("Maximum load that can be lifted = %.2f N",W);
