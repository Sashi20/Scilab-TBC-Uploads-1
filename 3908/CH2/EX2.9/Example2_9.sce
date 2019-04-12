//Example 2_9
clc;
clear;
close;

//Given data :
ml=327.5;// Measured length in m

// (a) the slope of ground is 7.5 deg
hd=ml*cosd(7.5);// Horizontal distance in m
disp(hd,"(a)Horizontal distance in m");

// (b) the ground rises by 30 cm for every 10 m along the slope
hd=((10^2)+(0.3^2))^0.5;// Horizontal distance for 10 m along the slope
Hd=ml*hd/10;// Horizontal distance for 327.5 m along the slope
disp(Hd,"(b)Horizontal distance for 327.5 m along the slope");

// (c) the gradient is 1:4
hd=((4^2)+(1^2))^0.5;// Horizontal distance along the slope
Hd=ml*4/hd;// Horizontal distance for 327.5 m along the slope
disp(Hd,"(c)Horizontal distance for 327.5 m along the slope");
