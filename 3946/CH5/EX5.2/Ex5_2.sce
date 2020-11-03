//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
FB = 1000;    //(N)(Force at joint B)
FC = 1000;    //(N)(Force at joint C)
alpha = 30;   //(degrees)
beta = 60;    //(degrees)
theta = 120;  //(degrees)

//Let TAB = Tension in the portion AB of the string,
//TBC = Tension in the portion BC of the string, and
//TCD = Tension in the portion CD of the string

//Applying Lami's equation at joint B:
// TAB/sind(60) = TBC/sind(150) = 1000/sind(150)

TAB = (FC * sind(beta))/sind(alpha + theta);      //(N)
TBC = (FC * sind(alpha))/sind(alpha);       //(N)

printf("Tension in the portion AB of the string = %.2f N\n",TAB);    //(The answers vary due to round off error)
printf("Tension in the portion BC of the string = %.2f N\n",TBC);

//Applying Lami's equation at joint C:
//TBC/sind(120) = TCD/sind(120) = 1000/sind(120)
TCD = (FB * sind(theta))/sind(theta);     //(N)

printf("Tension in the portion CD of the string = %.2f N",TCD);
