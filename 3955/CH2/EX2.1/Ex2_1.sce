//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 2: MOTION ALONG A STRAIGHT A LINE
//EX 2.1: AVERAGE AND INSTANTANEOUS VELOCITIES
clear;
clc;
deff('[X]=x(t)','X=20+5*t^2'); //function of displacement
t1=1; //given time in sec
t2=2; //given time in sec
x1=x(t1); //displacement at t=1s
x2=x(t2); //displacement at t=2s
delta_x=x2-x1; //displacement in meters
mprintf('(a)Displacement between t1=1s and t2=2s: %d m',delta_x);
Vav_x=(x2-x1)/(t2-t1); //average velocity in m/s
mprintf('\n(b)Average speed between t1=1s and t2=2s: %d m/s',Vav_x);
x2=x(t1+0.001);
Vav_x=(x2-x1)/((t1+0.001)-t1); //instantaneous speed at t=1s
mprintf('\n(c)Instantaneous speed at t=1s: %d m/s',Vav_x); //answer vary due to roudoff error
disp(numderivative(x,1),'(d)Speed at t=1s in m/s: '); //Vx=dx/dt at t=1 sec
disp(numderivative(x,2),'Speed at t=2s in m/s: '); //Vx=dx/dt at t=2 sec



