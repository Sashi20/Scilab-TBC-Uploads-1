clc; clear;
// Page 29
// Example 2.1
// Given data
ha=25; //depth at point A in ft
h=15; //height from the bottom in ft
// estimation
// Pressure at the tank bottom
Pa=0.43*ha; //psi, using equation 2-2b
hb=ha-h; // Depth of point B below water surface
// Pressure at point B
Pb=0.43*hb; //psi, using equation 2.2b
printf('Pressure at the point A = %f psi\n',Pa)
printf('Pressure at the point B = %f psi', Pb)
