//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
WP = 200;            //(N)(Weight of the cylinder P)
WQ = 500;            //(N)(Weight of the cylinder Q)
ED = 100/2;          //(Radius of cylinder P)
BF = 180/2;          //(Radius of cylinder Q)
BCF = 60;            //(degrees)
CF = BF*cotd(BCF);   //(mm)
FE = 180 - (CF + ED);    //(mm)
BG = FE;
AB = ED + BF;        //(mm)
ABG = acosd(BG/AB);  //(degrees)
//Applying Lami's equation at A:
//R1/sind(90 + ABG) = R2/sind(90) = WP/sind(180 - ABG)
R1 = (WP * cosd(ABG))/sind(ABG);     //(N)
R2 = WP/sind(ABG);                    //(N)

printf("Reaction of the cylinder P at the vertical side = %.2f N\n",R1);     //The answers vary due to round off error
printf("Reaction of the cylinder P at the point of contact with the cylinder Q = %.2f N\n",R2);    //The answers vary due to round off error

//Applying Lami's equation at B:
//R3/sind(90 + ABG) = R2/sind(60) = (R4 - WQ)/sind(180 + 30 - 56.1)
R3 = (R2 * cosd(ABG))/sind(BCF);      //(N)
R4 = WQ + (R2 * sind(180 + 30 - ABG))/sind(BCF);    //(N)

printf("Reaction of the cylinder Q on the inclined surface = %.2f N\n",R3);    //The answers vary due to round off error
printf("Reaction of the cylinder Q on the base of the channel = %.2f N",R4);    //The answers vary due to round off error
