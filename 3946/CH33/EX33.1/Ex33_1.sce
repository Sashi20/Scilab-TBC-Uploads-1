//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
N2 = 620;    //(r.p.m.)(Speed of the driver)
d1 = 300;    //(mm)(Diameter of pulley)
N1 = 240;    //(r.p.m.)(Speed of the pulley A)

//Let d2 = Diameter of the follower;
//Since, N2/N1 = d1/d2
d2 = (N1/N2)*d1;    //(mm)
printf("Diameter of the follower = %.2f mm",d2);
