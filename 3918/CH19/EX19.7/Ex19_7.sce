//Example 19_7
clc;
clear;
close;

//Given data :
E=60;//Undrained modulus of soil in N/mm^2
disp("(a)");
B=20;
q=150;
mu=0.3;
I=0.38;// Influence factor
rhoece=q*B*(1-(mu^2))*(I/E);// Elastic settlement at centre in mm
disp(rhoece,"  Elastic settlement at centre in mm");
RF=0.8;// Rigidity Factor
a=1;
crhoece=rhoece*RF*a;// Corrected Elastic settlement at centre in mm
disp(crhoece,"  Corrected Elastic settlement at centre in mm");
// The answers vary due to round off error

disp("(b)");
I=1.12;// Influence factor
rhoece=q*B*(1-(mu^2))*(I/E);// Elastic settlement at centre in mm
disp(rhoece,"   Elastic settlement at centre in mm");
RF=0.8;// Rigidity Factor
a=1;
crhoece=rhoece*RF*a;// Corrected Elastic settlement at centre in mm
disp(crhoece,"  Corrected Elastic settlement at centre in mm");
// The answer provided in the textbook is wrong
