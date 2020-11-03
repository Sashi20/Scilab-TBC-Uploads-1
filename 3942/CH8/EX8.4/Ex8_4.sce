//SCILAB version: 5.5.2
//Operating system: Windows 7 Ultimate
clc;                    //To clear the console screen
clear;                  //To clear all the existing variables in the memory
exec('.\fsolve3.sci');
//Replace '.' present inside the 'exec('')' with the path to the folder location where the dependency fsolve3.sci file is saved.


//Given data
P=1                     //P is pressure of the air in 'atm'
T=35                    //T is temperature of the air in '°C'
L=150                   //L is length of circular plastic duct in 'm'
V_dot=0.35              //V_dot is volume flow rate of water in the duct in 'm3/s'
h_L=20                  //h_L is head loss in the pipe in 'm'


//Assumption
Epsilon=0               //Epsilon is equivalent roughness value in 'm'(Assuming the duct to be smooth)
g=9.81                  //g is acceleration due to gravity in 'm/s2'
rho=1.145               //rho is density of the air in 'kg/m3'
Mu=1.895E-5             //Mu is dynamic viscosity of the air in 'kg/(m s)'
Nu=1.655E-5             //Nu is kinematic viscosity of the air in 'm2/s'


//Calculation
x0=[3 1 10000 0.01]     //Guess Value for Velocity (x(1)), Diameter (x(2)), Reynolds Mumber (x(3)) and Friction factor (x(4)) respectively
x=fsolve(x0,fsolve3)    //Calling statement for fsolve function
D_By_SJF=0.66*(((Epsilon^1.25)*(L*V_dot/(g*h_L))^4.75)+(Nu*(V_dot^9.4)*(L/(g*h_L))^5.2))^0.04//D_By_SJF is diameter of the duct determined using Swamee-Jain formula in 'm'


//Display of result
mprintf('\nVelocity is %.2f m/s.\nDiameter is %.3f m.\nReynolds number is %d.\nFriction factor is %.4f.\n\nDiameter by Swamee-Jain formula is %.3f m.',x(1),x(2),x(3),x(4),D_By_SJF)
//The answers vary due to round off error
