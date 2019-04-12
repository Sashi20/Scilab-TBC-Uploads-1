//Example 19_5
clc;
clear;
close;

//Given data :
Su=150;// Average undrained strength in kN/m^2
E=300*Su/1000;//Undrained modulus of soil in N/mm^2
disp("(i)");
B=5;
q=100;
mu=0.35;
ce=1.12;// L/B = 1.5 at centre is 1.12
rhoece=q*B*(1-(mu^2))*(ce/E);// Elastic settlement at centre in mm
disp(rhoece,"   Elastic settlement at centre in mm");
// The answers vary due to round off error

disp("(ii)");
E1=30;// Undrained modulus of sand in N/mm^2
h1=10;// Depth1 in m
E2=60;// Undrained modulus of sand in N/mm^2
h2=15;// Depth2 in m
Eavg=((E1*h1)+(E2*h2))/(h1+h2)*1000;// Average Undrained modulus in kN/m^2
mu=.3;
rhoece=q*B*(1-(mu^2))*(ce/E);// Elastic settlement at centre in mm
disp(rhoece,"   Elastic settlement at centre in mm");
// The answers vary due to round off error
