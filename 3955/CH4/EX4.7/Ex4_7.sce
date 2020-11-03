//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 4: NEWTON'S LAWS OF MOTION
//EXAMPLE 4.7 MASS AND WEIGHT
clear;
clc;
w=2.49*10^4; //weight of car in newton
g=9.8; //acceleration due to gravity in m/s^2;
m=(w/g); // mass of car in kg
F_x=-1.83*10^4; //given retarding force in newton
a_x=(F_x/m); //acceleration of car in m/s^2
disp(abs(a_x),'Magnitude of acceleration in m/s^2: '); //answer vary due to roundoff
if a_x>0 then disp('Direction of acceleration: positive x axis');
    else disp('Direction of acceleration: negative x axis');
end
