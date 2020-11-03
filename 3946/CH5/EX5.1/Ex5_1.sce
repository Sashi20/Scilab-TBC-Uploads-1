//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
W = 15;    //(N)(Weight at C)
BAC = 60;        //(degrees)
CBX = 45;        //(degrees)(Exterior angle at B)
CBA = 90 - CBX;  //(degrees)
BCA = 180 - BAC - CBA
alpha = 180 - CBX;    //(degrees)(Angle between TBC and 15 N)
theta = 360 - alpha - BCA;    //(degrees)(Angle between TAC and 15 N)

delta = 360 - (alpha + theta);    //(Angle between TAC and TBC)

//Let TAC = Force in the string AC, and
//TBC = Force in the string BC.
//Applying Lami's equation at C,
//  15/sind(75) = TAC/sind(135) = TBC/sind(150)
TAC = (W * sind(alpha))/sind(delta);
TBC = (W * sind(theta))/sind(delta);

printf("Force in the string AC = %.2f N\n",TAC);
printf("Force in the string BC = %.2f N",TBC);
