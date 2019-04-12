clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.16
//calculation of new radius of ring when lens is raised
//given data
R=40; //radius of curvature of lens (in cm)
r_dn=2.5; //radius of ring (in mm)
del_h=5.0; //distance of lens raised from plate (in micrometer)
//calculation
r_d1n=sqrt(r_dn^2-2*del_h*10^-3*R*10^1); //new radius of ring (in mm)
disp(r_d1n,'new radius (in mm) of ring when lens is raised is')
