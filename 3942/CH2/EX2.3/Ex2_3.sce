//SCILAB version: 5.5.2
//Operating system: Windows 7 Ultimate
clc;                    //To clear the console screen
clear;                  //To clear all the existing variables in the memory


//Given data
alpha=4.8E-5            //alpha is isothermal compressibility of water in 'atm-1'
T1=20                   //T1 is initial temperature in '°C'
P1=1                    //P1 is initial pressure in 'atm'


//Assumption
rho1=998                //rho1 is density of the water at T1 and P1 in 'kg/m3'
Beta=0.337E-3           //Beta is volume expansion co-efficient in 'K-1'


//Calculation
//Part (a)
T2=50                   //T2 is final temperature '°C'
P2=1                    //P2 is final pressure in 'atm'
delta_T=T2-T1           //delta_T is change in temperature in '°C'
delta_P=P2-P1           //delta_P is change in pressure in 'atm'
delta_rho=rho1*((alpha*delta_P)-(Beta*delta_T))//delta_rho is change in density in 'kg/m3'
rho2=rho1+delta_rho     //rho2 is final density in 'kg/m3'


//Display of Part (a) result
printf("\n(a) Density when heated to %d °C and at a constant pressure of %d atm is %.1f kg/m3.",T2,P2,rho2)
//The answers vary due to round off error


//Part (b)
T3=20                   //T3 is final temperature '°C'
P3=100                  //P3 is final pressure in 'atm'
delta_T=T3-T1           //delta_T is change in temperature in '°C'
delta_P=P3-P1           //delta_P is change in pressure in 'atm'
delta_rho=rho1*((alpha*delta_P)-(Beta*delta_T))//delta_rho is change in density in 'kg/m3'
rho2=rho1+delta_rho     //rho2 is final density in 'kg/m3'
//symbol 'rho2' is repeated in Part (b). It is already used in Part (a) of calculation.


//Display of Part (b) result
printf("\n(b) Density when compressed to %d atm and at a constant temperature of %d °C is %.1f kg/m3.",P3,T3,rho2)
