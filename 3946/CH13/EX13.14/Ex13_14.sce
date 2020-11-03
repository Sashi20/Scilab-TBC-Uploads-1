//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
FR = 10;    //(kN)(Force at R)
FS = 20;    //(kN)(Force at S)
FQ = 10;    //(kN)(Force at Q)
d = 3;      //(m)(Distance between forces)
PQ = 6.92;  //(m)
alpha = 60; //(degrees)
theta = 30; //(degrees)

//Taking moments about Q and equating the same:
VP = [(FS * d) + (FR * 2*d)]/PQ;     //(kN)

//Total wind loads on the truss:
W = FR + FS + FQ;      //(kN)

//Horizontal component of wind load:
HCQ = W * cosd(alpha);     //(kN)

//Vertical component of the wind load:
VCQ = W * sind(alpha);     //(kN)

//Vertical reaction at Q:
VQ = VCQ - VP;          //(kN)

//Resolving the forces vertically and equating the same:
PPR = VQ/sind(alpha);    //(kN)(Compression)

//Resolving the forces horizontally and equating the same:
PPT = PPR * cosd(alpha);   //(kN)(Tension)

//Considering joint Q:
//Resolving the forces vertically and equating the same:
PSQ = [VQ - FQ*cosd(theta)]/sind(theta);     //(kN)(Compression)

//Resolving the forces horizontally and equating the same:
PQT = PSQ*cosd(theta) + FS - FQ*sind(theta);    //(kN)(Tension)
PRS = PSQ;

//Considering joint T:
PST = 20;              //(kN)(Compression)

//Resolving the forces vertically and equating the same:
PRT = [PST*sind(alpha)]/sind(alpha);       //(kN)(Tension)

printf("Force in the member PR = %.2f kN(Compression)\n",PPR);
printf("Force in the member PT = %.2f kN(Tension)\n",PPT);
printf("Force in the member SQ = %.2f kN(Compression)\n",PSQ);
printf("Force in the member QT = %.2f kN(Tension)\n",PQT);
printf("Force in the member ST = %.2f kN(Compression)\n",PST);
printf("Force in the member RS = %.2f kN(Compression)\n",PRS);
printf("Force in the member RT = %.2f kN(Tension)",PRT);    //The answers vary due to round off error
