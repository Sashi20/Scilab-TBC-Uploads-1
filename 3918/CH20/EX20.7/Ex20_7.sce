//Example 20_7
clc;
clear;
close;

//Given data :
D=300;// Diameter of pile in mm

disp("i)");
d=10/100*D;// 10% of pile diamater in mm
x1=27;// Settlement in mm
x2=34;// Settlement in mm
y1=140;// Load in kN
y2=160;// Load in kN
l=((d-x1)*(y2-y1)/(x2-x1))+y1;// Load at 30mm pile diamater settlement in kN 
l=l/2;// Half the load at 30mm pile diamater settlement in kN 
disp(l,"Half the load at 30mm pile diamater settlement in kN");
// The answers vary due to round off error

disp("ii)");
d=12;// pile diamater in mm
x1=10;// Settlement in mm
x2=13;// Settlement in mm
y1=60;// Load in kN
y2=80;// Load in kN
l=((d-x1)*(y2-y1)/(x2-x1))+y1;// Load at 30mm pile diamater settlement in kN 
l=l*2/3;// Two-third of the load at 12mm pile diamater settlement in kN 
disp(l,"Two-third of the load at 12mm pile diamater settlement in kN");
// The answers vary due to round off error
