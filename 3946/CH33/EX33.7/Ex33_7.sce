//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
p = 120;   //(W)(Transmitting power)
v = 30;    //(m/s)(Speed of the belt)

//Let T1 - T2 = T12 = Necessary difference in tensions in the two sides of the belt.

//Power transmitted:
//P = ((T1 - T2)*v)/(4*N);
T12 =p/v;    //(N)
printf("Necessary difference in tensions in the two sides of the belt = %.2f N",T12);
