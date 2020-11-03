//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all

//Horizontal component of 15 kN load is zero:
PEF = 0;
FF = 15;      //(kN)(Force at F)
d1 = 1;       //(m)(Distance between the vertical partitions)
d2 = 1.5;     //(m)(Distance between the horizontal partitions)
//Taking moments of the forces acting on the upper portion of the frame about the joint A and equating the same:
PCD = (FF * 2*d1)/(2*d2);      //(kN)

//Taking moments of the forces about the joint D and equating the same:
PAB = (FF * d1)/(2*d2);      //(kN)

printf("Force in the member AB = %.2f kN\n",PAB);
printf("Force in the member CD = %.2f kN\n",PCD);
printf("Force in the member EF = %.2f kN\n",PEF);
