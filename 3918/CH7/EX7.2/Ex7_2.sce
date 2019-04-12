//Example 7_2
clc;
clear;
close;

//Given data :

// At Point A
disp("a)");
disp("  At Point A");
uwa=10;// Unit weight in kN/m^3
ha=100/1000;// Height from top till point A in m
pi=uwa*ha;// Magnitude of pi in kN/m^2
u=uwa*ha;// Magnitude of u in kN/m^2
pidash=pi-u;// Magnitude of pidash in kN/m^2
disp(pi,"       Magnitude of pi in kN/m^2");
disp(u,"        Magnitude of u in kN/m^2");
disp(pidash,"       Magnitude of pidash in kN/m^2");

// At Point B
disp("  At Point B");
uwb=20;// Unit weight of soil sample in kN/m^3
hb=300/1000;// Height from top till point B in m
h=600/1000;// Height in mm
pi1=pi+(uwb*hb);// Magnitude of pi in kN/m^2
u=uwa*h;// Magnitude of u in kN/m^2
pidash=pi1-u;// Magnitude of pidash in kN/m^2
disp(pi1,"       Magnitude of pi in kN/m^2");
disp(u,"        Magnitude of u in kN/m^2");
disp(pidash,"       Magnitude of pidash in kN/m^2");

disp("b)");
uwb=20;// Unit weight of soil sample in kN/m^3
hb=300/1000;// Height from top till point B in m
h=700/1000;// Height in mm
pi2=pi+(uwb*hb);// Magnitude of pi in kN/m^2
u=uwa*h;// Magnitude of u in kN/m^2
pidash=pi2-u;// Magnitude of pidash in kN/m^2
disp(pi2,"       Magnitude of pi in kN/m^2");
disp(u,"        Magnitude of u in kN/m^2");
disp(pidash,"       Magnitude of pidash in kN/m^2");
disp("Therefore effective stress is zero by increasing the water reservoir by another 100 mm");
disp(hb*1000,"Hence, the total head causing flow in mm");

