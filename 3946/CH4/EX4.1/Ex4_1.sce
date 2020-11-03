//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
FA = 50;    //(N)(Force at A)
FB = 100;   //(N)(Force at B)
AB = 360;   //(mm)(Length of rod)
//Magnitude of the resultant force:
//Since the given forces are like and parallel, therefore magnitude of the resultant force:
R = FA + FB;          //(N)
printf("Magnitude of the resultant force = %.2f N\n",R);

//Point where the resultant force acts
//Let x = Distance between the line of action of the resultant force (R) and A (i.e., AC) in mm;
//Taling clockwise and anticlockwise moments of the forces about C and equating the same;
x = (FB * (AB))/(FA + FB);
printf("Distance between the line of action of the resultant force (R) and A (i.e., AC) = %.2f mm",x);
