//Example 41_5
clc;
clear;
close;

//Given data :
fn=14.2;// Resonant frequency in Hz (From the graph in Fig. 41.7)
A=1*1;// Area of concrete test block A in m^2
UW=24;// Unit Weight of concrete in kN/m^3
W=1*1*1*UW;// Weight of concrete block in kN
g=9.81;// Accleration due to gravity in m/sec^2
m=W/g;// Mass of block in kg
Cu=((fn*2*3.14)^2)*m/A;// Coefficient of elastic uniform compression in kN/m^3
disp(Cu,"Coefficient of elastic uniform compression in kN/m^3");
// The answers vary due to round off error

// From Fig. 41.7
f2=925;// in rpm
f1=775;// in rpm
fnz=850;// in rpm
C=(f2-f1)/(2*fnz);// Fraction of critical damping
C=C*100;// Critical damping in %
disp(C,"Critical damping in % is");
// The answers vary due to round off error
