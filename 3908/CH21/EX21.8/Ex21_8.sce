//Example 21_8
clc;
clear;
close;

//Given data :
A=56;// Azimuth of the place in degree
d=42+(15/60);// Declination in degree
// In astronomical triangle ZPS
PS=90-d;// PS in degree
// The triangle is right angled at S. Therefore
// sin(A)=cos(d)/cos(teta)
// cos(teta)=cos(d)/sin(A)
teta=acosd(cosd(d)/sind(A));// Latitude in degree
m=(teta-int(teta))*60;// in minutes
s=(m-int(m))*60;// in seconds
disp(s,int(m),int(teta),"Latitude in degree,minute and seconds respectively");
// The answers vary due to round off error
