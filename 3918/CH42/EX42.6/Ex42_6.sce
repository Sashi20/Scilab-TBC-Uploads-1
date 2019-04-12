//Example 42_6
clc;
clear;
close;

//Given data :
gt=18.9;// Total Unit weight in kN/m^3
gs=8.9;// Unit weight of subsurface in kN/m^3
z=3;// Depth of interest in m
rd=1-(0.00765*z);// Stress reduction factor
amax=0.40;// Peak ground acceleration in g
g=9.81;// Accleration due to gravity in m/sec^2
tav=0.65*gt*z/g*amax*rd;// Cyclic shear stress induced during earthquake in kN/m^2
disp(tav,"Cyclic shear stress induced during earthquake in kN/m^2");
sv=41.7;// sigma dash v at depth of 3.0 m in kN/m^2
// The answer provided in the textbook is wrong
M=0.1;// Magnitude of earthquake
tcyc=M*sv;// Cyclic shear resistance available during earthquake in kN/m^2
disp(tcyc,"Cyclic shear resistance available during earthquake in kN/m^2");

if (tav>tcyc) then
    disp("Since the cyclic shear stress induced during earthquake is more than the cyclic shear resistance available, the soil at depth of 3 m will liquefy");
else
    disp("Since the cyclic shear stress induced during earthquake is less than the cyclic shear resistance available, the soil at depth of 3 m will not liquefy");
end
// The answer provided in the textbook is wrong
