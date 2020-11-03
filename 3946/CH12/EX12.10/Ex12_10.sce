//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 9;        //(m)(Span)
FC = 6;       //(kN)(Force at C)
FB = 9;       //(kN-m)
d = 3;        //(m)(Distance between partitions)
alpha = 45;   //(degrees)

//Let RA = Reaction at A,
//RD = Reaction at D.

//Vertical component of reaction RD:
//VRD = RD*cosd(45) = 0.707*RD;

//Anticlockwise moment due to the vertical component of reaction RD about A:
//M1 = 6.363*RD;      -(1)

//Sum of clockwise moments due to moment at B and Load at C about A:
M2 = FB + (FC * 2*d);        //(kN-m)    -(2)

//Equating (1) and (2):
RD = M2/(cosd(alpha)*FB);          //(kN)

//Vertical component reaction RD:
VRD = RD*cosd(alpha);    //(kN)

//Horizontal component of RD:
HRD = RD*sind(alpha);    //(kN)

//Vertical component reaction of RA:
VRA = 6 - 5;            //(kN)

RA = sqrt(HRD^2 + VRA^2);       //(kN)

//Angle which the reaction at A makes with the vertical:
T = atand(HRD/VRA);             //(Degrees)

printf("Reaction at A = %.2f kN\n",RA);
printf("Angle which the reaction at A makes with the vertical = %.2f degrees",T);    //The answer vary due to round off error
