//SCILAB version: 5.5.2
//Operating system: Windows 7 Ultimate
clc;             //To clear the console screen
clear;           //To clear all the existing variables in the memory


//Given data
rho=850        //rho is the density of the oil in 'kg/m3'
V=2            //V is the volume of the tank in 'm3'

//Calulation
m=rho*V        //m is the mass of oil in the tank in 'kg'

//Display of results
printf("Mass of oil in the tank is %d kg.",m)
