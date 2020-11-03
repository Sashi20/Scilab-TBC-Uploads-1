//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 9: ROTATION OF RIGID BODIES
//EX 9.9: USING THE PARALLEL AXIS THEOREM
clc;
clear;
M=3.6; //mass in kg
I_p=0.132; //moment of inertia about parallel axis
d=0.15; //distance in m
I_cm=I_p-M*d^2; //moment of inertia about center of mass
mprintf('Moment of inertia about parallel axis passing through C.M: %f kg.m^2',I_cm);
