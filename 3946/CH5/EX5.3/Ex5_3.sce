//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
//(i) Tensions in the portion AB, BC and CD of the string:
//TAB = Tension in the portion AB,
//TBC = Tension in the portion BC.
//TCD = TDE = 300 N
TCD = 300;        //(N)
alpha = 150;      //(degrees)
beta = 120;       //(degrees)

//Applying Lami's equation at C:
// TBC/sind(150) = W2/sind(120) = 300/sind(90)
TBC = TCD * sind(alpha);          //(N)
W2 = TCD * sind(beta);           //(N)

//Applying Lami's equation at B:
//TAB/sind(90) = W1/sind(60\\150) = TBC/sind(120)
TAB = TBC/sind(beta);            //(N)
W1 = (TBC * sind(alpha))/sind(beta);     //(N)

//(i)
printf("Tension in the portion AB = %.2f N\n",TAB);
printf("Tension in the portion BC = %.2f N\n",TBC);
printf("Tension in the portion CD = %.2f N\n",TCD);

//(ii)
printf("Magnitude of W1 = %.2f N\n",W1);
printf("Magnitude of W2 = %.2f N",W2);
