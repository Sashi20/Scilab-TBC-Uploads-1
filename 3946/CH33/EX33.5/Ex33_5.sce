//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
r1 = 0.3025;   //(m)(Radius of driving pulley)
r2 = 0.1525;   //(m)(Radius of driven pulley)
l = 3.5;       //(m)(Distance between the centres of the pulleys)

//Length of the cross belt drive:
L = %pi * (r1 + r2) + 2*l + (r1 + r2)^2/l;   //(m)
printf("Length of the cross belt drive = %.2f m",L);    //The answers vary due to round off error
