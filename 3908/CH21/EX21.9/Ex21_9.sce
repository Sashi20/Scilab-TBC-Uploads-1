//Example 21_9
clc;
clear;
close;

//Given data :

// (a) At upper culmination
d=20;// Declination in degree
teta=50;// Latitude in degree
ZD1=teta-d;// Zenith distance at upper culmination in degree
disp(ZD1,"(a) Zenith distance at upper culmination in degree");

// (b) At lower culmination
d=22+(30/60);// Declination in degree
teta=45+(30/60);// Latitude in degree
ZD2=180-teta-d;// Zenith distance at lower culmination in degree
disp(ZD2,"(b) Zenith distance at lower culmination in degree");
