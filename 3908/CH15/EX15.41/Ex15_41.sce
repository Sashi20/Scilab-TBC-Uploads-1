//Example 15_41
clc;
clear;
close;

//Given data
g1=0.6;// Gradient 1
g2=-0.9;// Gradient 2
TG=g1-g2;// Total change in gradient
G=30/0.075;// Rate of change in gradient
L=TG*G;// Length in m
// The curve will be in equal lengths on either side of the apex
D=g1*L/(2*100);// difference in m
DE=D*L/(2*100);// Difference in elevaton in m
RL=1430;// Reduced level of point of intersection in m
RL1=RL-D;// Reduced level of first tangent point in m
RL2=RL-DE;// Reduced level of second tangent point in m
I=985.5;// Chainage of point of intersection in m
C1=I+(L/2);// Chainage of apex of curve in m
disp(C1,"Chainage of apex of curve in m");
C2=C1+(L/2);// Chainage of second tangent point in m
disp(C2,"Chainage of second tangent point in m");
