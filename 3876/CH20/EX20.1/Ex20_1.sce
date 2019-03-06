//Windows 10
// Scilab 6.0.0
//Chapter 20 Radiochemistry

clc;
clear;

//Initialisation of Variables
U1_thalf= 4.5*10**9 //half-life period of Uranium 1 in years
Ra_thalf= 1590 //half-life period of Radium in years

//CALCULATIONS
lambda_U1= log10(2)/(U1_thalf*0.4343)
lambda_Ra= log10(2)/(Ra_thalf*0.4343)
//solution from disintegration constants
r= lambda_Ra/lambda_U1
//solution from half-life periods
r1= U1_thalf/Ra_thalf

//RESULTS
mprintf("Disintegration constant for Uranium 1= %.2e yr^-1",lambda_U1)
mprintf("\nDisintegration constant for Radium= %.2e yr^-1",lambda_Ra)
mprintf("\nRelative proportion(from disintegration constants)= %.2e",r)
mprintf("\nRelative proportion(from half-life periods)= %.2e",r1)
