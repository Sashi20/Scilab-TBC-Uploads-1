//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 4: NEWTON'S LAWS OF MOTION
//EXAMPLE 4.5: DETERMINING FORCE FROM ACCELERATION
clear;
clc;
m=0.45 //mass of bottle in kg
v_0x=2.8 //initial velocity of bottle in m/s
x_0=0; //initial position of bottle in m
v_x=0; //final velocity of bottle in m/s
x=1; //displacement of bottle in metres
a_x=(v_x^2-v_0x^2)/(2*(x-x_0)); //kinematic equation for acceleration 
f_x=m*a_x; //x component of force in newton(-ve sign because bottle's acceleration is in -ve x dir.)
mprintf('Magnitude of friction force in newton: %0.1f',abs(f_x));
if f_x>0 then mprintf('\nDirection of force: positive x axis');
else mprintf('\nDirection of force: negative x axis');
end
