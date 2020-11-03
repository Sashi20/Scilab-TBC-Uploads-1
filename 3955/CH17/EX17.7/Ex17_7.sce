//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 17: TEMPERATURE AND HEAT
//EXAMPLE 17.7: A TEMPERATURE CHANGE WITH NO PHASE CHANGE
clear;
clc;
m_C=0.3; //mass of coffee in kg
m_Al=0.12; //mass of aluminium cup in kg
c_W=4190; //heat capacity of water in J/kg.k
c_Al=910; //heat capacity of aluminium in J/kg.k
T_0C=70; //initial temperature of coffee in degree celsius
T_0Al=20; //initial temperature of aluminium cup in degree celsius
T=((m_C*c_W*T_0C)+(m_Al*c_Al*T_0Al))/(m_C*c_W+m_Al*c_Al);
disp(T,'Equilibrium Temperature in degree celsius: ');
