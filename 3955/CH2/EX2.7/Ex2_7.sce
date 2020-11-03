//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 2:MOTION ALONG A STRAIGHT LINE
//EX 2.7: UP AND DOWN MOTION IN FREE FALL
clc;
clear;
g=9.8; //acceleration due to gravity in ms^-2
y_0=0; //initial position in m
v_0y=15; //initial velocity in ms^-1
a_y=-g; //acceleration in y direction in m/s^2
deff('[Y]=y(t)','Y=v_0y*t+0.5*a_y*t^2'); //kinematic equation of motion
deff('[V_y]=v_y(t)','V_y=v_0y+a_y*t');  //kinematic equation of motion
t1=1; //given time instant in sec
t2=4; //given time instant in sec
disp(y(t1),v_y(t1),'(a)Velocity and position at t=1s in m/s and m respectively');
disp(y(t2),v_y(t2),'Velocity and position at t=4s in m/s and m respectively');
y=5; //when ball is 5m above origin
v_y=sqrt(v_0y^2+2*a_y*y);
disp(v_y,'(b)Velocity when ball is 5m above railing in m/s');//answer vary due to roundoff error
y1=(v_0y^2)/(2*g); //position when v_y=0 ( y1-y_0=(v_y^2-v_0^2)/(2*a_y) )
disp(y1,'(c)Maximum height in meter'); //answer vary due to roundoff error
