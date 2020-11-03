//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
FB = 250;    //(kN)(Force at B)
BC = 20;     //(m)
BE = BC;     //(m)
CE = 10;     //(m)
alpha = asind((CE/2)/BC);    //(degrees)
BD = sqrt(BC^2 - (CE/2)^2);  //(m)
DF = 8;                      //(m)
AB = 25;     //(m)
beta = asind(DF/BD);     //(degrees)
BF = sqrt(BD^2 - DF^2);  //(m)
ABF = acosd(BF/AB);      //(degrees)
theta = ABF - beta;

//Applying Lami's equation at B:
//T/sind(180 - 24.4) = 1.936*P/sind(45.1) = 250/sind(180 - 20.7)
T = (FB * sind(beta))/sind(theta);           //(kN)
P = (FB * sind(ABF))/(2*cosd(alpha) * sind(theta)); //(kN)

printf("Force in the member AB = %.2f kN\n",T);    //The answers vary due to round off error
printf("Force in each members BC and BE = %.2f kN",P);
