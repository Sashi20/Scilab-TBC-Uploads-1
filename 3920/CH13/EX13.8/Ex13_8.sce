// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 13-8
//Given
phi_XY_rad=0.5000; //angle by which wave X leads wave Y, rad
cycle_YZ=1/8;  //part of cycle by which wave Y lags wave Z

//data used
rad2deg=57.296; //for conversion from radian to degrees

//Computations
phi_XY_deg=phi_XY_rad*rad2deg; //in degrees
phi_YZ=cycle_YZ*360; //in degrees
phi_XZ=phi_XY_deg-phi_YZ; //angle by which wave X leads wave Z, degrees

if phi_XZ>=0
    printf("Wave X leads wave Z by %.2f degrees.",phi_XZ)
end

if phi_XZ<0
    printf("Wave X lags wave Z by %.2f degrees.",-phi_XZ)
end
