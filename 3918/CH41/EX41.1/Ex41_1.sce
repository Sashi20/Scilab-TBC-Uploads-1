//Example 41_1
clc;
clear;
close;

//Given data :
Cu=20000;// Coefficient of elastic uniform compression of a soil in kN/m^3
Af=4;// Area of block in m^2
Al=Af/2;// Area of block halved in m^2
Cul=Cu*sqrt(Af/Al);// New Coefficient of elastic uniform compression of a soil in kN/m^3
P=(Cul-Cu)/Cu*100;// Percentage increase in Coefficient of elastic uniform compression of a soil
disp(P,"Percentage increase in Coefficient of elastic uniform compression of a soil");
// The answers vary due to round off error
