//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER TEMPERATURE AND HEAT
//EXAMPLE 17.9 WHAT'S COOKING
clear;
clc;
m_W=0.1; //mass of water in kg
m_cu=2; //mass of copper pot in kg
T_0W=25; //initial temperature of water in celsius
T_0cu=150; //initial temperature of copper pot in celsius
c_W=4190; //specific heat capacity of water in J/kg.K
c_cu=390; //specific heat capacity of copper in J/kg.K
L_v=2.256*10^6; //latent heat of vapourization of water in J/kg
T=(m_W*c_W*T_0W+m_cu*c_cu*T_0cu)/(m_W*c_W+m_cu*c_cu); //final temperature in celsius
mprintf('Since T = %d which is above 100 celsius, some fraction of water will boil',T);
x=(-m_cu*c_cu*(100-T_0cu)-m_W*c_W*(100-T_0W))/(m_W*L_v); //fraction of water that will boil from energy conservation
m=x*m_W*1000; //mass of water that will boil in grams
mprintf('\nHence Final temperature is 100 celsius, and %0.1f gram of water will boil',m);
