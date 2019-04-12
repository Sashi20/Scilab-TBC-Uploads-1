//Example 22_5
clc;
clear;
close;

//Given data :
H=6;// Vertical height of wall in m
teta1=30;// Slope in degree
gt=18;// Unit weight of sand in kN/m^3
disp("(i)");
a=90;// Alpha in degree
b=0;// Beta in degree
g=0;// Gamma in degree
Ka=((sind(a-teta1)/sind(a))/(sqrt(sind(a+g))+sqrt(sind(teta1+g)*sind(teta1-b)/sind(a-b))))^2;// Coefficient of Active Earth Pressure
disp(Ka,"   Coefficient of Active Earth Pressure");
Pa=0.5*Ka*gt*H*H;// Total lateral pressure per metre run of the wall in kN/m
disp(Pa,"   Total lateral pressure per metre run of the wall in kN/m");

disp("(ii)");
a=110;// Alpha in degree
b=0;// Beta in degree
g=00;// Gamma in degree
Ka=((sind(a-teta1)/sind(a))/(sqrt(sind(a+g))+sqrt(sind(teta1+g)*sind(teta1-b)/sind(a-b))))^2;// Coefficient of Active Earth Pressure
disp(Ka,"   Coefficient of Active Earth Pressure");
Pa=0.5*Ka*gt*H*H;// Total lateral pressure per metre run of the wall in kN/m
disp(Pa,"   Total lateral pressure per metre run of the wall in kN/m");
// The answers vary due to round off error
teta2=20;// Angle in degree
Pah=Pa*cosd(teta2);// Total horizontal lateral pressure per metre run of the wall in kN/m
disp(Pah,"Total horizontal lateral pressure per metre run of the wall in kN/m");
Pav=Pa*sind(teta2);// Total vertical lateral pressure per metre run of the wall in kN/m
// The answers vary due to round off error
disp(Pav,"Total vertical lateral pressure per metre run of the wall in kN/m");
// The answer provided in the textbook is wrong
