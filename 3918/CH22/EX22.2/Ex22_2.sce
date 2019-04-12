//Example 22_2
clc;
clear;
close;

//Given data :
teta1=30;// Slope in degree
c=0;// Cohesion intercept in kN/m^2
g1=18;// Unit weight of sand in kN/m^3
g2=21;// Unit weight of sand in kN/m^3
gw=10;// Unit weight of water in kN/m^3
Ka=(1-sind(teta1))/(1+sind(teta1));// Coefficient of Active Earth Pressure
// At top of wall
H1=0; // Depth in m
sigmav1=g1*H1;// Vertical stress in kN/m^2
sigmah1=Ka*sigmav1;// Horizontal stress in kN/m^2
disp(sigmah1,"Active pressure at top of wall in kN/m^2");
// At 2 m below top of wall
H2=2;// Depth in m
sigmav2=g1*H2;// Vertical stress in kN/m^2
sigmah2=Ka*sigmav2;// Horizontal stress in kN/m^2
disp(sigmah2,"Active pressure at 2 m below top of wall in kN/m^2");
// At 6 m below top of wall
H3=6;// Depth in m
sigmav3=sigmav2+(g2*(H3-H2))-(gw*(H3-H2));// Vertical stress in kN/m^2
sigmah3=Ka*sigmav3;// Horizontal stress in kN/m^2
disp(sigmah3,"Active pressure at 6 m below top of wall in kN/m^2");
Pa1=0.5*H2*sigmah2;// Lateral pressure per metre run of the wall in kN/m
disp(Pa1,"  Lateral pressure Pa1 per metre run of the wall in kN/m");
Pa2=0.5*(H2+H3)*sigmah2;// Lateral pressure per metre run of the wall in kN/m
disp(Pa2,"  Lateral pressure Pa2 per metre run of the wall in kN/m");
Pa3=0.5*(H3-H2)*(sigmah3-sigmah2);// Lateral pressure per metre run of the wall in kN/m
disp(Pa3,"  Lateral pressure Pa3 per metre run of the wall in kN/m");
// The answers vary due to round off error
Pw=0.5*(H3-H2)*(gw*(H3-H2));// Lateral pressure per metre run of the wall in kN/m
disp(Pw,"  Lateral pressure Pw per metre run of the wall in kN/m");
TP=Pa1+Pa2+Pa3+Pw;// Total lateral pressure per metre run of the wall in kN/m
disp(TP,"  Total lateral pressure per metre run of the wall in kN/m");
// The answers vary due to round off error
z=(((4+(2/3))*Pa1)+(2*Pa2)+(4/3*Pa3)+(4/3*Pw))/TP;// Point of application of Total lateral pressure in m
disp(z,"Point of application of Total lateral pressure in m");
// The answers vary due to round off error
