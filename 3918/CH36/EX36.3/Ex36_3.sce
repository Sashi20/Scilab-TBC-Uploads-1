//Example 36_3
clc;
clear;
close;

//Given data :
b=atand(1/2.5);// Beta in degree
sc=10;// Sigma in degree
SF=tand(sc)/tand(b);// Safety Factor
disp(SF,"Safety Factor is");
if(SF<1) then
    disp("Geomembrane will slide without anchorage");
else
    disp("Geomembrane will not slide without anchorage");
end
D=9.4;// Density of HDPE in kN/m^3
T=1.5/1000;// Thickness of geomembrane in m
TS=18;// Tensile Strength at yield in kN/m
d=10;// depth in m
L=d/sind(b);// Length in m
Wg=D*T*L;// Weight of geomembrane in kN/m
D=Wg*sind(b);// Driving Force in kN/m
R=Wg*cosd(b)*tand(sc);// Resisting Force in kN/m
Tg=D-R;// Tension in geomembrane in kN/m
disp(Tg,"Tension in geomembrane in kN/m");
if(Tg<TS) then
    disp("Hence safe in tension");
else
    disp("Hence not safe in tension");
end
// The answers vary due to round off error
