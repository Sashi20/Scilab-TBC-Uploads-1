//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
F1 = 1;     //(kN)(Force at 2)
F2 = 1;     //(kN)(Force at 3)
alpha = 30;    //(degrees)(Angle at 1)
theta = 60;    //(degrees)(Angle at 5)

//(a)Tension in the cable:
//T = Tension in the cable,
//a = Length of each side of the equilateral triangle.
//Taking moments about the joint 5 and equating the same:
T = F1/cosd(theta);           //(kN)
printf("Tension in the cable = %.2f kN\n",T);

//(b)Nature and magnitude of the force in each bar:
//Considering joint 1:
//Resolving the forces vertically and equating the same:
P12 = (2*sind(alpha))/sind(theta);    //(kN)(Tension)

//Resolving the forces horizontally and equating the same:
P14 = 2*cosd(alpha) + P12*cosd(theta);          //(kN)(Compression)

//Considering joint 2:
//Resolving the forces vertically and equating the same:
P24 = [F1 - P12*cosd(theta)]/sind(theta);

//Resolving the forces horizontally and equating the same:
P23 = P12*cosd(theta);             //(kN)(Tension)

//Considering joint 4:
P34 = 0;
P24 = 0;
P45 = P14;                       //(kN)(Compression)
P24 = 0;
P25 = 0;

//Considering joint 3:
//Resolving the forces vertically and equating the same:
P35 = F1/cosd(alpha);           //(kN)(Tension)

printf("Force in the member 1-2 = %.2f kN(Tension)\n",P12);
printf("Force in the member 1-4 = %.2f kN(Compression)\n",P14);
printf("Force in the member 2-4 = %.2f kN\n",P24);
printf("Force in the member 2-3 = %.2f kN(Tension)\n",P23);
printf("Force in the member 3-4 = %.2f kN\n",P34);
printf("Force in the member 4-5 = %.2f kN(Compression)\n",P45);
printf("Force in the member 3-5 = %.2f kN(Tension)\n",P35);

//The answers vary due to round off error

//(c)Reaction at the wall:
R = sqrt(P45^2 + P35^2 + 2*P45*P35*cosd(2*theta));   //(kN)
printf("Reaction at the wall = %.2f kN",R);
