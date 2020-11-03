//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
N1 = 120;   //(r.p.m.)(Speed of the engine shaft)
d1 = 2;     //(m)(Diameter of the pulley on the engine shaft)
d2 = 1;     //(m)(Diameter of the machine shaft)
t = 0.005;  //(m)(Thickness of the belt)
s = 3;   //(Slip)

//(i) Speed of the machine shaft when there is no slip:
N2 = N1 * [(d1 + t)/(d2 + t)];    //(r.p.m.)
printf("Speed of the machine shaft when there is no slip = %.2f r.p.m.\n",N2);

//(ii) Speed of the machine shaft when there is a slip of 3% :
N2 = N1 * [(d1 + t)/(d2 + t)] * [1 - s/100];    //(r.p.m.)
printf("Speed of the machine shaft when there is a slip of 3 %% = %.2f r.p.m.",N2);    //(The answers vary due to round off error)
