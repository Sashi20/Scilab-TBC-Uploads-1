// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 19-2
//Given
r=1.33; //refractive index of water
s=1.00; //refractive index of air
x=30.0; //angle of incidence, in degrees

//Computations
y=asind(sind(x)*r/s); //angle of emergance, degrees

printf("The beam will emerge at an angle y=%.1f degrees, relative to normal, into the air.",y)
