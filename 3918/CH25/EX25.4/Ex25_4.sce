//Example 25_4
clc;
clear;
close;

//Given data :
g=18;// Unit weight of soil in kN/m^3
teta=30;// Slope in degree
c=0;
H=5;// Height in m
Ka=(1-sind(teta))/(1+sind(teta));// Coefficient of Active Earth Pressure
// At top of wall
H1=0; // Depth in m
sigmav1=g*H1;// Vertical stress in kN/m^2
sigmaa1=Ka*sigmav1;// Active pressure in kN/m^2
// At 6 m below top of wall
H2=H;// Height in m
sigmav2=g*H2;// Vertical stress in kN/m^2
sigmaa2=Ka*sigmav2;// Horizontal stress in kN/m^2
Pa=0.5*H*sigmaa2;// Lateral pressure per metre run of the wall in kN/m
disp(Pa,"Lateral pressure resisted by retaining wall per metre run of the wall in kN/m");
Sigmaat=0.65*Ka*g*H;// Active pressure at top of excavation in kN/m^2
Sigmaab=0.65*Ka*g*H;// Active pressure at bottom of excavation in kN/m^2
Pa=H*Sigmaat;// Lateral pressure per metre run of the wall in kN/m
disp(Pa,"Lateral pressure at braced excavation per metre run of the wall in kN/m");
disp("The wall of the braced excavation and the struts resist a total force of 97.5kN/m which is higher than the 75kN/m resisted by the retaining wall.");
disp("The earth pressure at the base of the retaining wall is higher than the braced excavation.");
