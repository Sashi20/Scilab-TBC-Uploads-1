//Example 33_3
clc;
clear;
close;

//Given data :
k=1/100000;// k value of soil in m/sec
H=7;// Height in m
nf=6;// Number of flow paths
nd=7;// Number of equipotential drops
w=1;
Q=k*H*nf/nd*w;// Maximum flow rate into the drain in m^3/sec
i=1;// Hydraulic gradient within the drain
tetar=Q/(i*w);// Required transmissivity in m^2/sec

// Case A: nonwoven geotextile
disp("Case A: nonwoven geotextile");
tetaa=2.5/100000;// Allowable transmissivity of geotextile in m^2/sec
SF=tetaa/tetar;// Safety Factor for geotextile
disp(SF,"   Safety Factor for geotextile is");
if(SF>5) then
    disp("  Safety Factor is greater than 5,hence OK");
else
    disp("  Safety Factor is lesser than 5,hence not OK");
end

// Case B: geonet
disp("Case B: geonet");
tetaa=1.2/1000;// Allowable transmissivity of geonet in m^2/sec
SF=tetaa/tetar;// Safety Factor for geonet
disp(SF,"   Safety Factor for geonet is");
if(SF>5) then
    disp("  Safety Factor is greater than 5,hence OK");
else
    disp("  Safety Factor is lesser than 5,hence not OK");
end
// The answers vary due to round off error
