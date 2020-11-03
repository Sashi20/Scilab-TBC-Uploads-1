//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
d = 600;        //(mm)(Diameter of wheel)
OR = 300;       //(mm)(Radius of the wheel)
OB = 150;       //(mm)(Height of the wheel)
w = 5;          //(kN)(Weight of the wheel)


//Let P = least pull required just to turn the wheel in kN
//From geometry:
//sin(theta) = 150/300;
theta = asind(OB/OR);

AB = sqrt(OR^2 - OB^2);        //(mm)

//Taking moments about A and equating the same.
//P * 300 = 5 * 260
P = (w * AB)/(OR);           //(kN)
printf("Least pull = %.2f kN\n",P);

//Let R = reaction on the block in kN;
//Resolving the forces horizontally and equating the same:
//R*cosd(30) = P*sind(30)
R = (P * sind(theta))/cosd(theta);        //(kN)
printf("Reaction on the block = %.2f kN",R);
