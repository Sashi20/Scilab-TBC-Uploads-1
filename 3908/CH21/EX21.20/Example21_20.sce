//Example 21_20
clc;
clear;
close;

//Given data :
alpha1=69+(32/60)+(31.8/3600);// Observed altitude in degree
cr=57*cotd(alpha1);// Correction for refraction in seconds
alpha2=alpha1-(cr/3600);// Corrected altitude in degree
ZD=90-alpha2;// Zenith distance in degree
// As the star lies between the zenith and the equator
d=48+(26/60)+(38.31/3600);// Declination in degree
teta=ZD+d;// Latitude in degree
disp(teta,"Latitude in degree");
// The answers vary due to round off error
