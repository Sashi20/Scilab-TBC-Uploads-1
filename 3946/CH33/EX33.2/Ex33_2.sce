//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
d1 = 500;   //(mm)(Diameter of the engine pulley)
d2 = 250;   //(mm)(Diameter of the shaft pulley)
d3 = 700;   //(mm)(Diameter of pulley 2)
d4 = 280;   //(mm)(Diameter of the follower)
N1 = 180;   //(r.p.m.)(Speed of the engine)

//Speed of the shaft:
N4 = N1 * (d1/d2) * (d3/d4);    //(r.p.m.)
printf("Speed of the shaft = %.2f r.p.m.",N4);
