//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 3: MOTION IN 1 OR 2 DIMENTIONS
//Ex 3.11: CENTRIPETAL ACCELERATION ON CURVED ROAD 
clear;
clc;
v=40; //linear velocity in m/s
a_rad=9.4; //centripetal acceleration in m/s^2
R=(v^2)/a_rad; //Radius of acceleration in m/s^2
mprintf('Required radius: %f m',R); //answer vary due to roundoff error
