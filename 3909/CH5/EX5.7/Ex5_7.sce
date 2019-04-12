clc;clear;
//OS windows 7
//scilab 6.0.1
//example 5.7
//calculation of precision with which position of electron is measured simultaneously and precision if electron is replaced by a golf ball
//given data
v=1.88*10^6; //speed (in m/s) of electron
m=9.1*10^-31; //mass (in kg) of electron
h=6.62*10^-34; //Plank's constant (in Js)
v1=40; //speed (in m/s) of golf ball
m1=45*10^-3; //mass (in kg) of golf ball
//calculation
//for electron
p_x=m*v; 
del_p_x=1/100*p_x; 
del_x=h/(4*%pi*del_p_x); //uncertainty in position
//for golf ball
p_x_dash=m1*v1; 
del_p_x_dash=1/100*p_x_dash;
del_x_dash=h/(4*%pi*del_p_x_dash);
printf("\nprecision with which position of electron is measured is %1.1f nm",del_x*10^9)
printf("\nprecision with which position of golf ball is measured is %1.0e m",del_x_dash)
//the second part of the answer is given wrong in the textbook



