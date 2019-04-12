//Example 22_7
clc;
clear;
close;

//Given data :
disp("i)For the short term");
c=50;// in kN/m^2
teta=0;// Slope in degree
H=6;// Vertical height of wall in m
g=18;// Unit weight of soil in kN/m^3
// At top of the wall
sigmav1=0;// Vertical stress in kN/m^2
sigmaa1=sigmav1-(2*c);// Active pressure in kN/m^2
// At base of the wall
sigmav2=g*H;// Vertical stress in kN/m^2
sigmaa2=sigmav2-(2*c);// Active pressure in kN/m^2
z=2*c/g;// Point at which active earth pressure is zero in m
Pa=0.5*(H-z)*sigmaa2;// Total lateral pressure per metre run of the wall in kN/m
disp(Pa,"   Total lateral pressure per metre run of the wall in kN/m");
Z=(H-z)/3;// Point of application of Lateral pressure on the wall above the base in m
disp(Z,"    Point of application of Lateral pressure on the wall above the base in m");
// The answers vary due to round off error


disp("ii)For the long term");
c=5;// in kN/m^2
teta=20;// Slope in degree
H=6;// Vertical height of wall in m
g=18;// Unit weight of soil in kN/m^3
Ka=(1-sind(teta))/(1+sind(teta));// Coefficient of Active Earth Pressure
// At top of the wall
sigmav1=0;// Vertical stress in kN/m^2
sigmaa1=(sigmav1*Ka)-(2*c*sqrt(Ka));// Active pressure in kN/m^2
// At base of the wall
sigmav2=g*H;// Vertical stress in kN/m^2
sigmaa2=(sigmav2*Ka)-(2*c*sqrt(Ka));// Active pressure in kN/m^2
disp(sigmaa2);
z=(2*c*sqrt(Ka))/(g*Ka);// Point at which active earth pressure is zero in m
Pa=0.5*(H-z)*sigmaa2;// Total lateral pressure per metre run of the wall in kN/m
disp(Pa,"   Total lateral pressure per metre run of the wall in kN/m");
Z=(H-z)/3;// Point of application of Lateral pressure on the wall above the base in m
disp(Z,"    Point of application of Lateral pressure on the wall above the base in m");
// The answers vary due to round off error
