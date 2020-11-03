//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 2: MOTION ALONG A STRAIGHT LINE
//EX 2.4: CONSTANT ACCELERATION CALCULATIONS
clc;
clear;
a_x=4; //acceleration in ms^-2
x_0=5; //initial displacement in m
v_0x=15; //initial velocity in m/s
t=2; //time in sec
x= x_0+v_0x*t+0.5*a_x*t^2; //displacement after 2 sec
v_x=v_0x+a_x*t; //velocity after 2 sec
disp(x,'(a)position after 2 sec in metres: ');
disp(v_x,'velocity after 2 sec in m/s: ');
v_x=25; //given velocity in ms^-1
x=x_0+(v_x^2-v_0x^2)/(2*a_x); //position when velocity=25 m/s
disp(x,'(b) Position when velocity= 25 m/s in metre: ');
