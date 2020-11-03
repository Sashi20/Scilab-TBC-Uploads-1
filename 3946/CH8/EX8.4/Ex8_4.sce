//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
P = 5;                 //(kN)
mu = 0.2;               //(Coefficient of friction at C)
AB = 1.5;              //(m)(Total length)
AC = 1;                //(m)(Length till pulley)
r1 = 50;               //(mm)(Inner radius of pulley)
r2 = 75;               //(mm)(Outer radius of pulley)
//Let R = Normal reaction of the pulley on the beam at C.
//Taking moments about the hinge A and equating the same:
R = (P * AB)/AC;        //(kN)

//Maximum force of friction at C:
MF = mu*R;               //(kN)

//Taking moments about the centre of the pulley and equating the same:
W = (AB * r2)/r1;      //(kN)
printf("Maximum load(W) = %.2f kN\n",W);

//Normal and tangential forces transmitted at C:
//R1 = Normal force or normal reaction at C;
//F1 = Tangential force at C.
W = 3;               //(kN)
P = 4.5;             //(kN)
//Taking moments about the hinge A and equating the same:
R1 = (P * AB)/AC;         //(kN)
printf("Normal reaction at C = %.2f kN\n",R1);

//Taking moments about the centre of the pulley and equating the same:
F1 = (W * r1)/r2;             //(kN)
printf("Tangential force at C = %.2f kN",F1);
