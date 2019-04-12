//Example 4_2
clc;
clear;
close;

//Given data :
uw=19;// Unit weight of sand in kN/m^3

// At elevation -10 m
disp("At Elevation -10 m:");
E=10;// Elevation in m
pi=uw*E;// Magnitude of pi in kN/m^2
u=10*10;// Magnitude of u in kN/m^2
pidash=pi-u;// Magnitude of pi' in kN/m^2
disp(pi,"   Magnitude of pi in kN/m^2");
disp(u,"    Magnitude of u in kN/m^2");
disp(pidash,"   Magnitude of pidash in kN/m^2");

// At elevation -25 m
disp("At Elevation -25 m:");
E=25;// Elevation in m
pi=uw*E;// Magnitude of pi in kN/m^2
u=10*25;// Magnitude of u in kN/m^2
pidash=pi-u;// Magnitude of pi' in kN/m^2
disp(pi,"   Magnitude of pi in kN/m^2");
disp(u,"    Magnitude of u in kN/m^2");
disp(pidash,"   Magnitude of pidash in kN/m^2");
