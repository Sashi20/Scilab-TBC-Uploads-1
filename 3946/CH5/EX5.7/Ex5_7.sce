//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
W = 100;    //(N)(Weight of cylinder)
alpha = 38.7;    //(degrees)(Angle POS)
beta = 77.4;     //(degrees)(Angle between R1 and R2)
//(i)
//Applying Lami's equation at O:
//R1/sind(141.3) = R2/sind(141.3) = 100/sind(77.4)
R1 = (W * sind(alpha))/sind(beta);     //(N)
R2 = (W * sind(alpha))/sind(beta);     //(N)

printf("Reaction R1 of the cylinder B on the cylinder A = %.2f N\n",R1);     //The answers vary due to round off error
printf("Reaction R1 of the cylinder C on the cylinder A = %.2f N\n",R2);     //The answers vary due to round off error

//(ii)
//Applying Lami's equation at P:
//64/sind(90) = R3/sind(180 - 38.7) = (R4 - 100)/sind(9 + 38.7)
R4 = W + R2 * cosd(alpha);       //(N)
printf("Reaction of the cylinder B on the base of the channel = %.2f N\n",R4);     //The answers vary due to round off error

//(iii)
R3 = R2 * sind(alpha);        //(N)
printf("Reaction of the cylinder B on the vertical side of the channel = %.2f N",R3);    //The answers vary due to round off error
