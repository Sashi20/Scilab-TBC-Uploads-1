//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 2: MOTION ALONG A STRAIGHT A LINE
//EX 2.3 AVERAGE AND INSTANTANEOUS ACCELERATIONS
clear;
clc;
deff('[V_x]=v_x(t)','V_x=60+0.5*t^2'); //given function of velocity
t1=1; //given time instant in sec
t2=3; //given time instant in sec
v_1x=v_x(t1);
v_2x=v_x(t2);
delta_v_x=v_2x-v_1x;
mprintf('(a)change in velocity: %d m/s',delta_v_x);
a_av_x=(v_2x-v_1x)/(t2-t1); //average acceleration b/w t=1 and t=3 sec
mprintf('\n(b)Average acceleration: %d m/s^2',a_av_x);
t2=t1+0.001;
v_2x=v_x(t2); //velocity at t=2 sec
v_1x=v_x(t1); //velocity at t=1 sec
a_av_x=(v_2x-v_1x)/(t2-t1); //acceleration at t=1 sec
mprintf('\n(c)Instantaneous acceleration at t=1s: %f m/s^2',a_av_x);
a_x=numderivative(v_x,1); //instantaneous x acceleration at t=1 sec using a_x=dv_x/dt
mprintf('\n(d)Instantaneous acceleration at t=1s: %d m/s^2',a_x); 
a_x=numderivative(v_x,3); //instantaneous x acceleartion at t=3 sec using a_x=dv_x/dt
mprintf('\n(d)Instantaneous acceleration at t=1s: %d m/s^2',a_x);


