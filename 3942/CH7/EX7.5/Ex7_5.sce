//SCILAB version: 5.5.2
//Operating system: Windows 7 Ultimate
clc;                    //To clear the console screen
clear;                  //To clear all the existing variables in the memory


//Given data
V_p=50                  //V_p is prototype wind tunnel speed in 'mi/h'
T_p=25                  //T_p is air temperature in prototype in '°C'
T_m=5                   //T_m is air temperature in model in '°C'


//Assumption
L_p=1                   //L_p is length of the prototype in 'm'
rho_p=1.184             //rho_p is prototype air density at T_p in 'kg/m3'
Mu_p=1.849E-5           //Mu_p is prototype air viscosity at T_p in 'kg/(m s)'
rho_m=1.269             //rho_m is model air density at T_m in 'kg/m3'
Mu_m=1.754E-5           //Mu_m is model air viscosity at T_m in 'kg/(m s)'


//Calculation
L_m=L_p/5                                   //L_m is length of the model in 'm'
V_m=V_p*(Mu_m/Mu_p)*(rho_p/rho_m)*(L_p/L_m) //V_m is model wind tunnel speed in 'm/s'


//Display of result
mprintf('\nRequired wind tunnel speed is %d mi/h.',V_m)
