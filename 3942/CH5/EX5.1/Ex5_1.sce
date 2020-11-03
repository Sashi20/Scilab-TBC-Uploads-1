//SCILAB version: 5.5.2
//Operating system: Windows 7 Ultimate
clc;                //To clear the console screen
clear;              //To clear all the existing variables in the memory


//Given data
V=10                //V is volume of bucket in 'gal'
ID=2                //ID is inner diameter of the hose in 'cm'
d_e=0.8             //d_e is nozzle exit diameter in 'cm'
Delta_t=50          //Delta_t is time taken to fill the bucket with water in 's'


//Assumption
rho=1000            //rho is density of water in 'kg/m3'


//Unit conversion
rho=rho/1000        //Conversion from 'kg/m3' to 'kg/L'
V=V*3.7854          //Conversion from 'gal' to 'L'
ID=ID/100           //Conversion from 'cm' to 'm'
d_e=d_e/100         //Conversion from 'cm' to 'm'


//Part (a)
//Calculation
V_dot=V/Delta_t     //V_dot is volume flow rate of water in 'L/s'
m=rho*V_dot         //m is mass flow rate of water in 'kg/s'


//Display of result
mprintf('\n(a) Volume flow rate of water is %.3f L/s.\n    Mass flow rate of water is %.3f kg/s.',V_dot,m)


//Part (b)
//Calculation
r_e=d_e/2           //r_e is radius of nozzle exit in 'm'
A_e=%pi*(r_e^2)     //A_e is area of nozzle exit in 'm2'
V_dot=V_dot/1000    //Conversion from 'L/s' to 'm3/s'
V_e=V_dot/(A_e)     //V_e is average velocity of water at the nozzle exit in 'm/s'


//Display of result
mprintf('\n\n(b) Average velocity of water at nozzle exit is %.1f m/s.',V_e)
