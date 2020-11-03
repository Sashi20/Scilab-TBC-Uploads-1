//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
FA = 10;     //(kN)(Force at A)
CD = 3;      //(m)
AD = 3;      //(m)
alpha = 60;  //(degrees)(Angles at A and D)
//Method of Joints:
//Resolving the forces vertically and equating the same:
PAB = FA/sind(alpha);     //(kN)(Tension)

//Resolving the forces horizontally and equating the same:
PAD = PAB * cosd(alpha);       //(kN)(Compression)

//Resolving the forces vertically and equating the same:
PBD = (PAB * sind(alpha))/sind(alpha);      //(kN)(Compression)

//Resolving the forces horizontally and equating the same:
PBC = PAB * cosd(alpha) + PBD * cosd(alpha);    //(kN)(Tension)

printf("Solved using method of joints.\n");
printf("Force in the member AB = %.2f kN(Tension)\n",PAB);
printf("Force in the member AD = %.2f kN(Compression)\n",PAD);
printf("Force in the member BD = %.2f kN(Compression)\n",PBD);
printf("Force in the member BC = %.2f kN(Tension)\n\n",PBC);

//Method of sections
//Taking moments of the forces acting on right part of truss only, about the joint D and equating the same
PAB = (FA * CD)/(AD * sind(alpha));

//Now taking moments of the forces in the right part of the truss only about the joint B and equating the same
PAD = (FA * AD/2)/(CD * sind(alpha));

//taking moments of the forces in the right part of the truss only about the joint D and equating the same
PBC = (FA * CD)/(AD * sind(alpha));

//Now taking moments of the forces in the right part of the truss only about the joint C and equating the same
PBD = ((FA * CD) - (PAD * AD * sind(alpha)))/(AD/2 * sind(alpha));

printf("Solved using method of sections.\n");
printf("Force in the member AB = %.2f kN(Tension)\n",PAB);
printf("Force in the member AD = %.2f kN(Compression)\n",PAD);
printf("Force in the member BD = %.2f kN(Compression)\n",PBD);
printf("Force in the member BC = %.2f kN(Tension)",PBC);
