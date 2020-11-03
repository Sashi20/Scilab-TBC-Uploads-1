//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
//Let F1 an F2 be two forces
//If two force act at right angles:
//Resultant = (F1^2 + F2^2)^(1/2)
//(F1)^2 + (F2)^2 = 10;

//when angle between two forces is 60 degrees
//Resultant = (F1^2 + F2^2 + 2*F1*F2*cosd(60))*(1/2)
//Simplifying:
//F1*F2 = 3;

//X = (F1 + F2)^2 = 16;
X = 16;
//Y = (F1 - F2)^2 = 4;
Y = 4;

x = X^(1/2);
y = Y^(1/2);

//2*F1 = x + y;
F1 = (x + y)/2;
F2 = (x - y)/2;

printf("F1 = %.2f N\n",F1);
printf("F2 = %.2f N",F2);
