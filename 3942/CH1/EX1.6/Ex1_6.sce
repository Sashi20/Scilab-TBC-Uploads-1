//SCILAB version: 5.5.2
//Operating system: Windows 7 Ultimate
clc;                        //To clear the console screen
clear;                      //To clear all the existing variables in the memory


//Given data
V1=0                        //V1 is the initial volume in 'gal'
V2=1.1                      //V2 is the final volume in 'gal'
delta_T=45.62               //delta_T is the change in time in 's'


//Calculation
delta_V=V2-V1               //delta_V is the change in volume in 'gal'
V_dot=delta_V/delta_T       //V_dot is the volume flow rate in 'gal/s'
V_dot=V_dot*3.785*60/1000   //Conversion 'gal/s' to 'm3/min'


//Display of result
printf("Volume flow rate is %f m3/min.",V_dot)
//The answers vary due to round off error
