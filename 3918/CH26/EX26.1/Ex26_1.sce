//Example 26_1
clc;
clear;
close;

//Given data :
BC=3;// Blade capacity in m^3
sf=25/100;// Swelling factor
d=50;// Horizontal layer distance in m
fs=2*1000;// Dozer's forward speed in m/hr
rs=5*1000;// Dozer's return speed in m/hr
tf=0.4;// Time for shifting gears in minutes
tp=d/fs*60;// Time for cutting and pushing at forward speed  in minutes
tr=d/rs*60;// Time for returining at return speed in minutes
V=BC/(1+sf);// Volume stripped per cycle in m^3
tc=tp+tr+tf;// Cycle time in minutes
k=0.8;// Efficiency factor(assumption)
T=k*60/tc;// Trips per hour
O=V*T;// Output per hour in m^3/hr
disp(O,"Output per hour in m^3/hr");
// The answers vary due to round off error
