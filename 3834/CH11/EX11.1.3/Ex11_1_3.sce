//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 11.1.3
//windows 7
//Scilab version-6.0.0
clc;
clear all;
//given

ETA=0.7;//The quantum efficiency
alphaabs=1E+5;//absorption coefficient
w=(log(1-ETA))/(-alphaabs);

mprintf("The width of the depletion region of an InGaAs photodiode =%.1f micro-m",w*1E+6);
