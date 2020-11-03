//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 17: TEMPERATURE AND HEAT
//EXAMPLE 17.2: LENGTH CHANGE DUE TO TEMPERATURE CHANGE
clear;
clc;
L_0=50; //initial length in meters
T_0=293; //inital temperature in kelvin
T=308; //Final temperature in kelvin
deltaT=T-T_0; //temperature difference
alpha=1.2*10^-5; //coefficient of linear expansion in unit per kelvin
deltaL=alpha*L_0*deltaT; //change in length due to temperature change
L=L_0+deltaL; 
printf('Length of the tape when the temperature is 35 degree celsius: %f m',L);
Factor=L/L_0; //true distance= factor*measured reading
measured_reading=35.794; //given measured reading in m
true_distance=Factor*measured_reading;
printf('\nActual distance: %f m',true_distance);

