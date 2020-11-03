//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 8: MOMENTUM AND IMPULSE
//EX 8.3: KICKING A SOCCER BALL
clc;
clear;
m=0.4; //mass in kg
v1x=-20; //initial horizontal velocity in -x dir in m./s
v1y=0; //intial vertical velocity 
v2=30; //final speed in m/s
alpha=45; //angle between v2 and +ve x axis
v2x=v2*cosd(alpha),v2y=v2*cosd(alpha); //x and y component of final velocity in m/s
Jx=m*(v2x-v1x); //Horizontal impulse
Jy=m*(v2y-v1y); //Vertical impulse
delta_t=0.010; //time interval in sec
Fav_x=Jx/delta_t; //horizontal force in N
Fav_y=Jy/delta_t; //vertical force in N
Fav=sqrt(Fav_x^2+Fav_y^2); //average force in N
theta=atand(Fav_y/Fav_x); //angle in degrees
mprintf('\nHorizontal Impulse: %f N.s',Jx); //answer vary due to roundoff error
mprintf('\nVertical impulse: %f N.s',Jy); //answer vary due to roundoff error
mprintf('\nMagnitude of net force: %f N',Fav); //answer provided in textbbok is wrong
mprintf('\nAngle with x axis in degrees: %f',theta); //answer provided in textbbok is wrong

