//Example 33_2
clc;
clear;
close;

//Given data :
// Check for adequacy of water flow across the plane of the geotextile
disp("Check for adequacy of water flow across the plane of the geotextile");
t=10/1000;// Thickness of geotextile in m
pg=0.05;// Allowable permitivity of geotextile in sec^-1
ks=5/(10^8);// k value of soil in m/sec
kg=pg*t;// k value of geotextile in m/sec
FS=kg/ks;// Factor of Safety
disp(FS,"Factor of Safety is");
if(FS>10) then
    disp("Factor of Safety is greater than 10,hence OK");
else
    disp("Factor of Safety is lesser than 10,hence adopt it as 10");
end

// Check for retention of soil
D85=0.03;// D85 value in mm
O95=0.04;// O95 value in mm
SF=2.5*D85/O95;// Safety facor 
disp(SF,"Safety Factor is");
if(SF>1) then
    disp("Safety Factor is greater than 1,hence OK");
else
    disp("Safety Factor is lesser than 1,hence adopt it as 1");
end
disp("Thus geotextile is suitable as filter");
// The answers vary due to round off error