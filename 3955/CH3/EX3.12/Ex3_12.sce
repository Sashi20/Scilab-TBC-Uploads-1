//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 3: MOTION IN 1 OR 2 DIMENTIONS
//Ex 3.12: CENTRIPETAL ACCELERATION ON A CARNIVAL RIDE
clear;
clc;
R=5; //radius in m
T=4; //time taken in 1 revolution
v=(2*%pi*R)/T; //speed in m/s
a_rad=(v^2)/R; //centripetal accleleration in m/s^2
mprintf('Centripetal acceleration: %f m/s^2',a_rad); //answer vary due to roundoff error
