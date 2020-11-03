//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 17: TEMPERATURE AND HEAT
//EXAMPLE 17.8 CHANGES IN BOTH TEMPERATURE AND HEAT
clear;
clc;
m_c=0.25; //mass of Omni-cola(mostly water) in kg
c_W=4190; //specific heat capacity of water in J/kg.K
c_I=2100; //specific heat capacity of ice(near 0 degree celsius) in J/kg.K
T=0; //final temperature in celsius
T=273.15+T; //final temperature in kelvin
T_0I=-20; //initial temperature of ice in celsius
T_0I=273.15+T_0I; //initial temperature of ice in kelvin
T_0C=25; //initial temperature of omni-cola in celsius;
T_0C=273.15+T_0C; //initial temperature of omni-cola in kelvin;
L_f=3.34*10^5; //latent heat of fusion of ice in J/kg
m_I=(m_c*c_W*(T_0C-T)/(c_I*(T-T_0I)+L_f))*1000; //mass of ice required in grams
disp(round(m_I),'mass of ice required in gram: '); 
