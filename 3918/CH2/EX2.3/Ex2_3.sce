//Example 2_3
clc;
clear;
close;

//Given data :
W=1.15/1000;// Wet weight in kN
V=86.2/1000000;// Volume in m^3
gammat=W/V;// Total unit weight in kN/m^3
disp(gammat,"Total unit weight in kN/m^3 is");
Ws=0.5/1000;// Dry weight in kN
gammad=Ws/V;// Dry unit weight in kN/m^3
disp(gammad,"Dry unit weight in kN/m^3 is");
// The answers vary due to round off error
