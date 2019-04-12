//Example 19_4
clc;
clear;
close;

//Given data :
E=5;// Undrained modulus of clay in N/mm^2
mu=0.5;
B=2;
q=150;
ce=1.36;// L/B = 1.5 at centre is 1.36
co=0.68;// L/B = 1.5 at centre is 0.68
rhoece=q*B*(1-(mu^2))*(ce/E);// Elastic settlement at centre in mm
disp(rhoece,"Elastic settlement at centre in mm");
rhoeco=q*B*(1-(mu^2))*(co/E);// Elastic settlement at corner in mm
disp(rhoeco,"Elastic settlement at corner in mm");
AVG=(rhoece+rhoeco)/2;// Average elastic settlement in mm
disp(AVG,"Average elastic settlement in mm");
// Consolidated settlement range is 566 mm to 629 mm
CS=600;// Consolidated settlement in mm
P=(AVG)*100/CS;
disp(P,"Elastic settlement is less than consolidated settlement in % by");
// The answers vary due to round off error
