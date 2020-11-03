//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
BC = 20;    //(cm)
BE = 10;    //(cm)
FBC = 12;   //(kN)
FAB = 7;    //(kN)
FEC = 8;    //(kN)
FDE = 6;    //(kN)
FCA = 9;    //(kN)
FBD = 5;    //(kN)

//Magnitude of the resultant force:
alpha = atand(BC/BE);          //Angle BEC = alpha

//Resolving all the forces horizontally:
H = FEC*sind(alpha) + FBC + FBD*sind(45) - FCA*sind(45) - FDE*sind(alpha);             //(kN)

//Resolving all the forces vertically:
V = FAB + FEC*cosd(alpha) - FBD*cosd(45) - FCA*cosd(45) + FDE*cosd(alpha);              //(kN)

Resultant = sqrt(H^2 + V^2);       //(N)
printf("Magnitude of the resultant force = %.2f kN\n",Resultant);

//Direction of resultant force:
//Let theta = Angle, which the resultant force makes with the horizontal:
theta = atand(V/H);
printf("Angle of resultant with the horizontal = %.2f degrees\n",theta);

//Position of  the resultant force:
//l = Perpendicular distance between the point E and the line of action of the resultant force.
//Taking moments about E and equating the same:
x = ((FAB*0) + (FEC*0) + (FBC*BE) + (FBD*sind(45)) + (FCA*sind(45)) + (FDE*0))/(Resultant);
printf("Perpendicular distance between the point E and the line of action of the resultant force = %.2f cm",x);     //The answers vary due to round off error
