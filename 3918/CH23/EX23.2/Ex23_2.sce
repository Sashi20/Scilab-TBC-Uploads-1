//Example 23_2
clc;
clear;
close;

//Given data :
disp("a)");
Su1=15;// Average Undrained shear strength at 1 m depth in kN/m^2
Su5=35;// Average Undrained shear strength at 5 m depth in kN/m^2
Sud=0.5*(Su1+Su5);// Design Undrained shear strength in kN/m^2
disp(Sud,"  Design Undrained shear strength in kN/m^2");

disp("b)");
// Sub-zone 1:
disp("Sub-zone 1:");
Su0=10;// Average Undrained shear strength at 0 m depth in kN/m^2
Su5=35;// Average Undrained shear strength at 5 m depth in kN/m^2
Sud=0.5*(Su0+Su5);// Design Undrained shear strength in kN/m^2
disp(Sud,"  Design Undrained shear strength in kN/m^2");
// Sub-zone 2:
disp("Sub-zone 2:");
Su5=35;// Average Undrained shear strength at 5 m depth in kN/m^2
Su10=60;// Average Undrained shear strength at 10 m depth in kN/m^2
Sud=0.5*(Su5+Su10);// Design Undrained shear strength in kN/m^2
disp(Sud,"  Design Undrained shear strength in kN/m^2");
// Sub-zone 3:
disp("Sub-zone 3:");
Su10=60;// Average Undrained shear strength at 10 m depth in kN/m^2
Su15=85;// Average Undrained shear strength at 15 m depth in kN/m^2
Sud=0.5*(Su10+Su15);// Design Undrained shear strength in kN/m^2
disp(Sud,"  Design Undrained shear strength in kN/m^2");
// Sub-zone 4:
disp("Sub-zone 4:");
Su15=85;// Average Undrained shear strength at 15 m depth in kN/m^2
Su20=91;// Average Undrained shear strength at 20 m depth in kN/m^2
Sud=0.5*(Su15+Su20);// Design Undrained shear strength in kN/m^2
disp(Sud,"  Design Undrained shear strength in kN/m^2");
