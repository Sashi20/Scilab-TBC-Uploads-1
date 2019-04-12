//Example 22_6
clc;
clear;
close;

//Given data :
H=6;// Vertical height of wall in m
q=12;// Uniform surcharge in kN/m^2
teta1=30;// Slope in degree
g=18;// Unit weight of sand in kN/m^3
Ka=(1-sind(teta1))/(1+sind(teta1));// Coefficient of Active Earth Pressure
Pa=0.5*Ka*g*H*H;// Total lateral pressure per metre run of the wall in kN/m
disp(Pa,"Lateral pressure per metre run of the wall in kN/m");
AP=Ka*q;// Additional Active Pressure on account of surcharge acting along entire height of wall in kN/m^2
disp(AP,"Additional Active Pressure on account of surcharge acting along entire height of wall in kN/m^2");
Pa1=AP*H;// Additional lateral pressure on account of surcharge per metre run of the wall in kN/m
disp(Pa1,"Additional lateral pressure on account of surcharge per metre run of the wall in kN/m");
TP=Pa+Pa1;// Total lateral pressure per metre run of the wall in kN/m
disp(TP,"Total lateral pressure per metre run of the wall in kN/m");
z=((Pa*2)+(Pa1*3))/TP;// Point of application of Total Lateral pressure in m
disp(z,"Point of application of Total Lateral pressure in m");
// The answers vary due to round off error
