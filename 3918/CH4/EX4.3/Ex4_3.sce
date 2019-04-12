//Example 4_3
clc;
clear;
close;

//Given data :
uw=19;// Unit weight of sand in kN/m^3
uw1=10;// Unit weight of fill material in kN/m^3

// At elevation 0 m
disp("At Elevation 0 m:");
E=10;// Elevation in m
pi=uw1*E;// Magnitude of pi in kN/m^2
u=10*10;// Magnitude of u in kN/m^2
pidash=pi-u;// Magnitude of pi' in kN/m^2
disp(pi,"   Magnitude of pi in kN/m^2");
disp(u,"    Magnitude of u in kN/m^2");
disp(pidash,"   Magnitude of pidash in kN/m^2");

// At elevation -10 m
disp("At Elevation -10 m:");
E=10;// Elevation in m
pi1=pi+(uw*E);// Magnitude of pi in kN/m^2
u=10*20;// Magnitude of u in kN/m^2
pidash=pi1-u;// Magnitude of pi' in kN/m^2
disp(pi1,"   Magnitude of pi in kN/m^2");
disp(u,"    Magnitude of u in kN/m^2");
disp(pidash,"   Magnitude of pidash in kN/m^2");

// At elevation -25 m
disp("At Elevation -25 m:");
E=25;// Elevation in m
pi2=pi+(uw*E);// Magnitude of pi in kN/m^2
u=10*35;// Magnitude of u in kN/m^2
pidash=pi2-u;// Magnitude of pi' in kN/m^2
disp(pi2,"   Magnitude of pi in kN/m^2");
disp(u,"    Magnitude of u in kN/m^2");
disp(pidash,"   Magnitude of pidash in kN/m^2");
