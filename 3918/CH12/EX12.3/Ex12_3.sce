//Example 12_3
clc;
clear;
close;

//Given data :
// With reference to Fig 12.16
ecs=100;// Effective Confining Stress in kN/m^2
Af=-0.5;// Assumption
cdash=50;// cdash in kN/m^2
angle=25;// Angle in degree
Sd=(ecs+(cdash*cotd(angle)))*(sind(angle)/(1-sind(angle)));// Shear strength under drained condition in kN/m^2
Su=(ecs+(cdash*cotd(angle)))*(sind(angle)/(1-(1-(2*Af))*sind(angle)));// Shear strength under undrained condition in kN/m^2
disp(Sd,"Shear strength under drained condition in kN/m^2"); 
disp(Su,"Shear strength under undrained condition in kN/m^2"); 
// The answers vary due to round off error
// The answer provided in the textbook is wrong
