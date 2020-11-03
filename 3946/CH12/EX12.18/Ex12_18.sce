//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 8;        //(m)(Span of the truss)
F1 = 1;       //(kN)(Force at A)
F2 = 2;       //(kN)(Force at C)
F3 = 1;       //(kN)(Force at D)
l = 8;        //(m)(Total length)
theta = 30;   //(degrees)(Angle at A, B and angle formed at C and E)
//Let RA = Reaction at the left support A,
//RB = Reaction at the right support B.

//Equating the anticlockwise and clockwise moments about A:
RB = [2*2/cosd(theta) + 1*4/cosd(theta)]/(l * sind(2*theta));   //(kN)
RA = (F1 + F2 + F3) - RB;         //(kN)


//Total horizontal component of the loads:
H_Sum = F1*cosd(2*theta) + F2*cosd(2*theta) + F3*cosd(2*theta);   //(kN)

//Horizontal thrust on each support:
RAH = 1;         //(kN)
RBH = 1;         //(kN)

//Equating the anticlockwise and clockwise moments about A:
RBV = [2*2/cosd(theta) + 1*4/cosd(theta)]/l;     //(kN)
RAV = [F1*sind(2*theta) + F2*sind(2*theta) + F3*sind(2*theta)] - RBV;    //(kN)

//Reaction at A:
RA = sqrt(RAH^2 + RAV^2);     //(kN)

//Angle which the reaction RA makes with the vertical:
theta_A = atand(RAV/RAH);          //(Degrees)

//Reaction at B:
RB = sqrt(RBH^2 + RBV^2);     //(kN)

//Angle which the reaction RB makes with the vertical:
theta_B = atand(RBV/RBH);          //(Degrees)

printf("Reaction at A = %.2f kN\n",RA);
printf("Angle which the reaction RA makes with the vertical = %.2f degrees\n",theta_A);    //The answers vary due to round off error
printf("Reaction at B = %.2f kN\n",RB);    //The answers vary due to round off error
printf("Angle which the reaction RB makes with the vertical = %.2f degrees",theta_B);    //The answers vary due to round off error
