//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 9: ROTATION OF RIGID BODIES
//EX 9.1: CALCULATING ANGULAR VELOCITY
clc;
clear;
deff('[Theta]=theta(t)','Theta=2*t^3');
r=0.18; //radius in meter
t1=2; //given time instant in sec
t2=5; //given time instant in sec
theta1=theta(t1);
theta2=theta(t2);
mprintf('(a)Angle at t1=2s: %f radian = %f degrees ',theta1,(180/%pi)*theta(t1)); //answer vary due to roundoff error
mprintf('\nAngle at t2=5s: %f radian = %f degrees ',theta2,(180/%pi)*theta(t2)); //answer vary due to roundoff error
s=r*(theta2-theta1);
mprintf('\n(b)Distance travelled between t=2s and t=5s: %f m',s); //answer vary due to roundoff error
omega_av_z=(theta2-theta1)/(t2-t1);
mprintf('\n(c)Average angular velocity= %f rad/s= %f rev/min',omega_av_z,30*omega_av_z/%pi); //answer vary due to roundoff error
omega_1z=numderivative(theta,t1); //Instantaneous angular velocity at t=2s (omega_z=d(theta)/dt)
omega_2z=numderivative(theta,t2); //Instantaneous angular velocity at t=5s
mprintf('\n(d)Instantaneous angular velocity at t=2s: %f rad/s',omega_1z);
mprintf('\nInstantaneous angular velocity at t=5s: %f rad/s',omega_2z);









