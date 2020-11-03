//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 17 TEMPERATURE AND HEAT 
//EXAMPLE 17.12 CONDUCTION THROUGH TWO BARS-1
clear;
clc;
A=0.02^2; //Area of bar in m^2
L_s=0.1; //length of steel in meters
L_cu=0.2; //length of copper in meters
T_H=100; //higher temperature in celsius
T_c=0; //lower temperature in celsius
K_s=50.2; //heat conductivity of steel in W/m.K
K_cu=385; //heat conductivity of copper in W/m.K
T=((K_s/L_s)*T_H+(K_cu/L_cu)*T_c)/((K_s/L_s)+(K_cu/L_cu)); //junction temperature in degree celsius
H_s=K_s*A*(T_H-T)/L_s; //total heat current in watts
H_cu=K_cu*A*(T-T_c)/L_cu; //total heat current in watts
disp(T,'junction temperature in degree celsius: '); //answer vary due to roundoff
disp(H_s,'Heat current in watts: '); //since (H_s=H_cu) //answer vary due to roundoff
