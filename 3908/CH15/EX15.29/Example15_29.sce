//Example 15_29
clc;
clear;
close;

//Given data
// If O2O1P = teta, then sin(teta)=O2P/O1O2=O2P/2R
teta1=30.25;// Angle at first point in degree
teta2=20.5;// Angle at first point in degree
// O2P=O1E + O2F = R(cos(teta1) + cos(teta2))
// sin(teta) = R(cos(teta1) + cos(teta2))/2R
// R gets cancelled and the eq is sin(teta) = (cos(teta1) + cos(teta2))/2
x=cosd(teta1) + cosd(teta2);
teta=asind(x/2);// Angle in degree
// T1T2 = T1E + EF + FT2 = Rsin(teta1) + (2*sin(teta)) + sin(teta2)
T1T2=680;// Distance between tangent points in m
R=T1T2/(sind(teta1)+(2*sind(teta))+sind(teta2));// Radius of the curve in m
disp(R,"Radius of the curve in m");
AI=teta1-teta2;// Angle of intersection in degree
disp(AI,"Angle of intersection in degree");
// The answer provided in the textbook is wrong
