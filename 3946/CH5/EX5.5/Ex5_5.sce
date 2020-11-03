//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
W = 100;    //(N)(Weight of cylinder)
alpha = 40;    //(degrees)
beta = 15;     //(degrees)

//Let RA = Reaction at A,
//RB = Reaction at B.
//Applying Lami's equation at O,
// RA/sind(180 - 40) = RB/sind(180 - 15) = 100/sind(15 + 40)
RA = (W * sind(alpha))/sind(alpha + beta);      //(N)
RB = (W * sind(beta))/sind(alpha + beta);      //(N)

printf("Reaction at A = %.2f N\n",RA);     //The answers vary due to round off error
printf("Reaction at B = %.2f N",RB);
