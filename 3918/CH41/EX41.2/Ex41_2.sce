//Example 41_2
clc;
clear;
close;

//Given data :
Af=2*2;// Area in m^2
Cu=20000;// Coefficient of elastic uniform compression in kN/m^3
kz=Cu*Af;// Stiffness in the vertical directon in kN/m
W=125;// Weight of machine in kN
g=9.81;// Accleration due to gravity in m/sec^2
m=W/g;// Mass of machine in kg
wn=sqrt(kz/m);// Natural frequency of vibration in rad/sec
fn=1/(2*3.14)*wn;// Natural frequency of machine in Hz
disp(fn,"Natural frequency of machine in Hz");
// The answers vary due to round off error
