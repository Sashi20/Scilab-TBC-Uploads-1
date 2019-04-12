//Example 2_1
clc;
clear;
close;

//Given data :
d=38;// Diameter of soil sample in mm
h=76;// Height of soil sample in mm
ww=1.15;// Wet weight of soil sample in N
dw=0.5;// Dry weight of soil sample in N
G=2.7/100000;// Specific gravity of soil sample in 
W=ww-dw;// void weight in N
w=(W/dw)*100;// Water content in percentage
disp(w,"Water content in percentage is");
V=86200;// Volume in mm^3
Vs=W/G;// Volume of solids on mm^3
Vv=67.7*1000;// Volume of voids in mm^3
Vw=65*1000;// Volume of water in mm^3
S=(Vw/Vv)*100;// Degree of saturation in percentage
disp(S,"Degree of saturation in percentage is");
// The answers vary due to round off error
