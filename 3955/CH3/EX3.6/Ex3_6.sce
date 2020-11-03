//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 3: MOTION IN 2 OR 3 DIMENTIONS
//EX 3.6: A BODY PROJECTED HORIZONTALLY
clc;
clear;
v_0x=9; //initial horizontal speed of motorcycle in m/s
v_0y=0; //initial vertical speed of motorcycle in m/s
t=0.5; //given time in sec
g=9.8; //acceleration due to gravity in m/s^2
x=v_0x*t; //horizontal displacement in m
y=v_0y*t-0.5*g*t^2; //vertical displacement in m
r=sqrt(x^2+y^2); //distance of motorcycle from starting point in m
v_x=v_0x; //final horizontal speed of motorcycle at t=0.5s in m/s
v_y=-g*t; //final vertical speed of motorcycle at t=0.5s in m/s
v=sqrt(v_x^2+v_y^2); //final speed of motorcycle at t=0.5s in m/s
alpha=atand(v_y/v_x); //angle of final velocity of motorcycle with horizontal axis in degrees
mprintf('X coordinate of motorcycle: %f m',x);
mprintf('\nY coordinate of motorcycle : %f m',y); //answer vary due to roundoff error
mprintf('\nDistance of motorcycle from edge of cliff: %f m',r); //answer vary due to roundoff error
mprintf('\nFinal speed of motorcycle at 0.5s: %f m/s',v); //answer vary due to roundoff error
mprintf('\nAngle of velocity of motorcycle with x axis: %f degrees',alpha); //answer vary due to roundoff error







