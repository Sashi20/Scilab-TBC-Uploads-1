//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
r2 = 0.25;   //(m)(Radius of the driven pulley)
l = 12;      //(m)(Distance between the centres of the two pulleys)
r1 = 0.8;    //(m)(Radius of the driving pulley)

//Length of the belt if it is open:
L = %pi * (r1 + r2) + 2*l + (r1 - r2)^2/l;
printf("Length of the belt if it is open = %.2f m\n",L);

//Length of the belt if it is crossed:
L = %pi * (r1 + r2) + 2*l + (r1 + r2)^2/l;
printf("Length of the belt if it is crossed = %.2f m",L);
