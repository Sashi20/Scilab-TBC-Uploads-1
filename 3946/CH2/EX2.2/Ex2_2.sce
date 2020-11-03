//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
AOC = 120;           //(degrees)
F1 = 40;            //(N)(bigger force)
BOC = 90;          //(degrees)(angle between resultant and smaller force(F2))
//From geometry
AOB = AOC - BOC;      //(degrees)

//Also, tan(AOB) = (F2*sin(AOC))/(F1 + F2*cos(AOC))
//After simplification
//F2 = (tand(AOB)*F1)/(sind(AOC) - tand(AOB)*cosd(AOC))
F2 = (tand(AOB)*F1)/(sind(AOC) - tand(AOB)*cosd(AOC))

printf("Smaller force = %.2f N",F2);
