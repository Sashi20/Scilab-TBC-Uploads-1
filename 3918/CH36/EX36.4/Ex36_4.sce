//Example 36_4
clc;
clear;
close;

//Given data :
SF=1.5;// Safety Factor
sc=21;// Angle of interface shearing resistance in degree
b=round(atand(tand(sc)/SF));// Beta in degree
L=30;// Length in m
tt=0.6;// Thickness of top soil in m
td=0.3;// Thickness of drainage layer in m
uw=17;// Unit weight of top soil and drainage layer in kN/m^3
D=9.4;// Density of HDPE in kN/m^3
sc=10;// Angle of geomembrane-clay interface resistance in degree
T=1.5/1000;// Thickness of geomembrane in m
Ws=L*(tt+td)*uw;// Weight of soil in kN/m
Wg=L*D*T;// Weight of geomembrane in kN/m
D=Ws*sind(b);// Driving Force in kN/m
R=Ws*cosd(b)*tand(sc);// Resisting Force in kN/m
Tg=round(D-R);// Tension in geomembrane in kN/m
disp(Tg,"Tension in geomembrane in kN/m");
disp("Geomembrane can fail in tension it its tensile strength is less than 33 kN/m");
