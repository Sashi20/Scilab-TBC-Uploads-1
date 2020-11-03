//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all

//Solving by analytical method
l = 10;      //(m)(Span)
alpha = 30;  //(degrees)(Angle at A)
F1 = 1;      //(kN)(Force at A)
F2 = 2;      //(kN)(Force at C)
F3 = 1;      //(kN)(Force at D)
//Let RA = Reaction at A,
//RB = Reaction at B.

//From the geometry of the figure, the distance between the support A and the line of action of the load at D:
d1 = (l/2)/cosd(alpha);    //(m)

//Perpendicular distance between the support A and the line of action of the load at C:
d2 = d1/2;          //(m)

//Equating the anticlockwise moments and the clockwise moments about A:
RB = [(F2 * d2) + (F3 * d1)]/l;     //(kN)

W = F1 + F2 + F3;       //(Total wind load)

HW = W*cosd(60);    //(Horizontal component of the total wind load)

VW = W*sind(60);    //(Vertical component of the total wind load)

//Balance vertical reaction at A:
BA = VW - RB;        //(kN)

//Reaction at A:
RA = sqrt(HW^2 + BA^2);     //(kN)

//Angle which the reaction RA makes with the vertical:
theta = atand(HW/BA);           //(Degrees)

printf("Reaction at A = %.2f kN\n",RA);
printf("Reaction at B = %.2f kN\n",RB);
printf("Angle which the reaction RA makes with the vertical = %.2f degrees",theta);    //The answers vary due to round off error
