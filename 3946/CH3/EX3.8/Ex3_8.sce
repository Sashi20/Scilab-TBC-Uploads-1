//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
FAB = 4;    //(kN)
FAD = 10;   //(kN)
FAC = 8;    //(kN)
//Resultant force in magnitude and direction:
//Resolving the forces horizontally:
H = FAB + FAC*cosd(45);          //(units)

//Resolving the forces vertically:
V = -FAD + (-FAC*cosd(45));     //(units)

R = sqrt(H^2 + V^2);     //(units)
printf("Magnitude of the resultant force = %.2f units\n",R);    //The answers vary due to round off error

//Let theta = Angle  which the resultant force makes with the horizontal:
theta = atand(abs(V/H));           //(degrees)

//Since, H is positive and V is negative, therefore the resultant lies between 270 degrees and 360 degrees;
Angle = 360 - theta;       //(degrees)
printf("Angle of resultant = %.2f degrees\n",Angle);     //The answers vary due to round off error

//Magnitude and sense of force along AJ and JH:
//P1 = force along AH and,
//P2 = force along AJ.

//From geometry:
X1 = atand(0.5/1);           //(degrees)
X2 = atand(0.5/1);          //(degrees)

//Resolving the forces P1 and P2 horizontally:
//P1*cosd(X1) + P2*sind(X2) - 9.656 = 0;    (1)

//Resolving the forces P1 and P2 vertically and equating them with the vertical component of thhe resultant force:
//P1*sind(X1) + P2*cosd(X2) - 15.656 = 0;   (2)

//Solving equation (1) and (2):
A = [cosd(X1), sind(X2); sind(X1), cosd(X2)];    //(Coefficient matrix)
C = [-9.656; -15.656];    //(Constant matrix)
[x,nsA]=linsolve(A,C);
P1 = x(1);
P2 = x(2);

printf("Value of P1 = %.2f units and value of P2 = %.2f units",P1,P2);    //(The answers vary due to round off error)

  
