//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 5000;     //(kg)(Mass of the truck)
Tr = 750;     //(N)
u = 10;       //(m/s)(Speed of the truck)
alpha = asind(1/100);     //(Degrees)
g = 9.8;      //(m/s^2)(Accn due to Gravity)

//(a) Power required to propel the truck up the incline,
//Resistance due to inclination:
RI = m*g*sind(alpha);        //(N)

//Total resisting force:
TR = Tr + RI;                //(N)

//Work done in one second:
P = [TR * u]/1000;           //(kW)

printf("Power required to propel the truck up the incline = %.2f kW\n",P);

//(b) Power required to propel the truck on a level track:
//Work done in one second:
P = [Tr * u]/1000;            //(kW)
printf("Power required to propel the truck on a level track = %.2f kW\n",P);

//(c) Power required to propel the truck down the incline:
//Net resisting force:
NR = Tr - RI;                //(N)

//Work done in one second:
P = [NR * u]/1000;           //(kW)
printf("Power required to propel the truck down the incline = %.2f kW",P);
