//Example 22_1
clc;
clear;
close;

//Given data :
H=6;// Vertical height of wall in m

disp("(a)");
teta1=30;// Slope in degree
c=0;// Cohesion intercept in kN/m^2
g=18;// Unit weight of sand in kN/m^3
Ka=(1-sind(teta1))/(1+sind(teta1));// Coefficient of Active Earth Pressure
// At top of the wall
sigmav1=0;// Vertical stress in kN/m^2
sigmah1=Ka*sigmav1;// Horizontal stress in kN/m^2
// At base of the wall
sigmav2=g*H;// Vertical stress in kN/m^2
sigmah2=Ka*sigmav2;// Horizontal stress in kN/m^2
printf("    The active pressure increases linearly from %d to %d kN/m^2\n",sigmah1,sigmah2);
Pa=0.5*Ka*g*H*H;// Total lateral pressure per metre run of the wall in kN/m
disp(Pa,"   Total lateral pressure per metre run of the wall in kN/m");

disp("(b)");
teta2=40;// Slope in degree
c=0;// Cohesion intercept in kN/m^2
g=20;// Unit weight of sand in kN/m^3
Ka=(1-sind(teta2))/(1+sind(teta2));// Coefficient of Active Earth Pressure
// At top of the wall
sigmav1=0;// Vertical stress in kN/m^2
sigmah1=Ka*sigmav1;// Horizontal stress in kN/m^2
// At base of the wall
sigmav2=g*H;// Vertical stress in kN/m^2
sigmah2=Ka*sigmav2;// Horizontal stress in kN/m^2
printf("    The active pressure increases linearly from %d to %0.2f kN/m^2\n",sigmah1,sigmah2);
Pa=0.5*Ka*g*H*H;// Total lateral pressure per metre run of the wall in kN/m
disp(Pa,"   Total lateral pressure per metre run of the wall in kN/m");
// The answers vary due to round off error
