//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 2: MOTION ALONG A STRAIGHT LINE
//EX 2.6: A FREELY FALLING COIN
clc;
clear;
g=9.8; //acceleration due to gravity in ms^-2 
y_0=0; //given initial position in m
t_0=0; //given time instant in sec
t1=1; //given time instant in sec
t2=2; //given time instant in sec
t3=3; //given time instant in sec
v_0y=0; //given initial velocity in m/s
a_y=-g; //given initial acceleration in m/s^2
deff('[Y]=y(t)','Y=y_0+v_0y*t+0.5*a_y*t^2'); //kinematic equation for displacement
deff('[V_y]=v_y(t)','V_y=v_0y+a_y*t'); //kinematic equation for velocity
y_1=y(t1); //position at t=1 sec
v_1y=v_y(t1); //velocity at t=1 sec
disp(y_1,v_1y,'Position and velocity at time= 1sec in metre and m/s respectively'); 
y_2=y(t2); //position at t=2 sec
v_2y=v_y(t2); //velocity at t=2 sec
disp(y_2,v_2y,'Position and velocity at time= 2sec in metre and m/s respectively'); //answer given in textbook is wrong
y_3=y(t3); //position at t=3 sec
v_3y=v_y(t3); //velocity at t=3 sec
disp(y_3,v_3y,'Position and velocity at time= 3sec in metre and m/s respectively'); //answer given in textbook is wrong





