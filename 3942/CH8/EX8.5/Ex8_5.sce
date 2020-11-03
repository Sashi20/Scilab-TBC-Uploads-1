//SCILAB version: 5.5.2
//Operating system: Windows 7 Ultimate
clc;                    //To clear the console screen
clear;                  //To clear all the existing variables in the memory
exec('.\fsolve4.sci');
//Replace '.' present inside the 'exec('')' with the path to the folder location where the dependency fsolve4.sci file is saved.


//Given data
P=1                     //P is pressure of the air in 'atm'
T=35                    //T is temperature of the air in '°C'
L=300                   //L is length of circular plastic duct in 'm'
h_L=20                  //h_L is head loss in the pipe in 'm'
D=0.267                 //D is diameter of the duct in 'm'
V_dot_old=0.35          //V_dot is old volume flow rate of water in the duct in 'm3/s'


//Assumption
Epsilon=0               //Epsilon is equivalent roughness value in 'm'(Assuming the duct to be smooth)
g=9.81                  //g is acceleration due to gravity in 'm/s2'
rho=1.145               //rho is density of the air in 'kg/m3'
Mu=1.895E-5             //Mu is dynamic viscosity of the air in 'kg/(m s)'
Nu=1.655E-5             //Nu is kinematic viscosity of the air in 'm2/s'


//Calculation
Epsilon_by_D=Epsilon/D      //Epsilon_by_D is the roughness factor of the duct
R=D/2                       //R is radius of the duct in 'm'
A=%pi*R^2                   //A is CSA of the duct in 'm2'
x0=[1 0.01 3 50000]         //Guess value for New volume flow rate (x(1)), Friction factor (x(2)), Velocity (x(3)) and Reynolds Number (x(4)) respectively
x=fsolve(x0,fsolve4)        //Calling statement for fsolve function
V_dot_drop=V_dot_old-x(1)   //V_dot_drop is drop in the volume flow rate in 'm3/s'


//Display of result
mprintf('\nOld volume flow rate is %.2f m3/s.\nNew volume flow rate is %.2f m3/s.\nFriction factor is %.4f.\nVelocity is %.2f m/s.\nReynolds Number is %d.\n\nThe drop in the flow rate is %.2f m3/s.',V_dot_old,x(1),x(2),x(3),x(4),V_dot_drop)
//The answers vary due to round off error
