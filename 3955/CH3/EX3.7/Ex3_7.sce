//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 3: MOTION IN 1 OR 2 DIMENTIONS
//Ex 3.7: HEIGHT AND RANGE OF A PROJECTILE 1: A BATTLED BASEBALL
clear;
clc;
v_0=37; //initial speed of projectile in m/s
alpha_0=53.1; //angle of projection in degrees
g=9.8; //acceleration due to gravity in m/s^2
t=2; //time interval in sec
v_0x=v_0*cosd(alpha_0); //initial horizontal speed in m/s
v_0y=v_0*sind(alpha_0); //initial vertical speed in m/s
x=v_0x*t; //x component of position in m
y=v_0y*t-0.5*g*t^2; //y component of position in m
v_x=v_0x; //horizontal velocity after 2s in m/s
v_y=v_0y-g*t; //vertical velocity after 2s in m/s
v=sqrt(v_x^2+v_y^2); //total speed after 2s in m/s
alpha=atand(v_y/v_x);
mprintf('(a)X coordinate after 2sec: %f m',x);
mprintf('\nY coordinate after 2sec: %f m',y);
mprintf('\nTotal speed after 2sec: %f m\nAngle of velocity with x axis in degres: %f',v,alpha);
t1=v_0y/g; //time at v_y=0 in sec
h=v_0y*t1-0.5*g*t1^2; //Maximum height in m
mprintf('\n(b)Time taken to reach maximum height: %f sec',t1);
mprintf('\nMaximum height: %f m',h);
t=poly(0,'t') //polynomial for y
y=(v_0y*t)-0.5*g*t^2; //y=v_0y*t2-(1/2)*g*t^2
t2=roots(y); //solving for two values of t2 when y=0
if(t2(1)~=0) then //considering only non zero value of t2, since t2=0 implies that horizontal range R=0 which is trivial
R=v_0x*t2(1); //horizontal range of projectile in m
else R=v_0x*t2(2);
end
mprintf('\n(c) Horizontal range of projectile: %f m',R); //answer vary due to round off error





