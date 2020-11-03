//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all

FD = 200;    //(N)(Force at D)
AB = 3;      //(m)
MT = 350;    //(N)(Maximum tension)
FC = 400;    //(N)(Force at C)

//x = Distance between the body of weight 200 N and support A.
//Now taking clockwise and anticlockwise moments about B and equating the same;
//350 * 3 = 200 * (3 - x) + 400 * 1.5;
x = ((FD*AB + FC*AB/2)-(MT*AB))/FD;           //(m)
printf("Distance between the body of weight 200 N and support A = %.2f m",x);
