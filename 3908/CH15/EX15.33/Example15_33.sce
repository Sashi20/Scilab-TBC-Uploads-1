//Example 15_33
clc;
clear;
close;

//Given data
v=100*1000/3600;// Maximum speed of vehicles in m/s
cr=1/4;// Centrifugal ratio
g=9.81;// Force due to gravity in m/s^2
R=4*v^2/g;// Radius of the circular curve in m
disp(R,"Radius of the circular curve in m");
alpha=0.3;// Rate of change of radial acceleration in m/s^3
L=v^3/(alpha*R);// Length of transition curve in m
disp(L,"Length of transition curve in m");
tetad=L/(2*R)*180/3.14;// Spiral angle in degree
teta1=60;// Deflection angle between tangents in degree
teta=teta1-(2*tetad);// Central angle of circular arc in degree
l=R*3.14*teta/180;// Length of circular arc in m
S=L^2/(24*R);// Shift in m
TL=((R+S)*tand(teta1/2))+(L/2);// Tangent length in m
LC=l+(2*L);// Length of combined curve in m
I=1850;// Chainage of I in m
C1=I-TL;// Chainage of beginning of first transition curve in m
disp(C1,"Chainage of beginning of first transition curve in m");
C2=C1+L;// Chainage of beginning of circular arc in m
disp(C2,"Chainage of beginning of circular arc in m");
C3=C2+l;// Chainage of end of circular arc in m
disp(C3,"Chainage of end of circular arc in m");
C4=C3+L;// Chainage of end of combined curve in m
disp(C4,"Chainage of end of combined curve in m");
// The answers vary due to round off error
