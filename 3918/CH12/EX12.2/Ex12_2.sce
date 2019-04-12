//Example 12_2
clc;
clear;
close;

//Given data :
// With reference to Fig 12.15
ecs=100;// Effective Confining Stress in kN/m^2
Af=1;// Assumption
angle=30;// Angle in degree
Sd=ecs*(sind(angle)/(1-sind(angle)));// Shear strength under drained condition in kN/m^2
Su=ecs*(sind(angle)/(1-(1-(2*Af))*sind(angle)));// Shear strength under undrained condition in kN/m^2
disp(Sd,"Shear strength under drained condition in kN/m^2"); 
disp(Su,"Shear strength under undrained condition in kN/m^2"); 
// The answers vary due to round off error
