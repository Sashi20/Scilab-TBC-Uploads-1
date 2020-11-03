//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 17: TEMPERATURE AND HEAT
//EXAMPLE 17.1: BODY TEMPERATURE
clear;
clc;
T1=32; //given temperature in fahrenheit
T2=98.6; //given temperature in fahrenheit
T1_celsius=(5/9)*(T1-32); //temperature in celsius Tc=(5/9)*(Tf-32)
T2_celsius=(5/9)*(T2-32); //temperature in celsius 
deltaT=T2_celsius-T1_celsius;
printf('Temperature difference in celsius: %f celsius',deltaT);
T1_kelvin=273.15+T1_celsius; //temperature in kelvin (Tk=Tc+273.15)
T2_kelvin=273.15+T2_celsius; //temperature in kelvin
deltaT=T2_kelvin-T1_kelvin;
printf('\nTemperature difference in kelvin: %f kelvin',deltaT);
