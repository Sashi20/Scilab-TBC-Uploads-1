//Example 41_4
clc;
clear;
close;

//Given data :
fn=15;// Resonant frequency in Hz
A=1.5*0.75;// Area of concrete test block A in m^2
UW=24;// Unit Weight of concrete in kN/m^3
W=A*0.75*UW;// Weight of concrete block in kN
g=9.81;// Accleration due to gravity in m/sec^2
m=W/g;// Mass of concrete block in kg
Cu=((fn*2*3.14)^2)*m/A;// Coefficient of elastic uniform compression in kN/m^3
disp(Cu,"Coefficient of elastic uniform compression in kN/m^3");
// The answer provided in the textbook is wrong
// Al=6*6=36 m^2
// However we limit the value of Al=10 m^2
Al=10;// Area of block in m^2
Cul=sqrt(Cu*Cu*Al/A);// New Coefficient of elastic uniform compression in kN/m^3
Wb=6*6*2.5*UW;// Weight of rigid foundation block in kN
W=100;// Weight of machine in kN
TW=Wb+W;// Total weight in kN
m=W/g;// Mass in kg
fn=1/(2*3.14)*sqrt(Cul*6*6/m);// Natural frequency in vertical vibrations in Hz
disp(fn,"Natural frequency in vertical vibrations in Hz");
// The answer provided in the textbook is wrong
