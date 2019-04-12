//Example 41_3
clc;
clear;
close;

//Given data :
Wf=1000;// Weight of foundation in kN
Wm=400;// Weight of machine in kN
TW=Wf+Wm;// Total Weight in kN
g=9.81;// Accleration due to gravity in m/sec^2
m=TW/g;// Mass of foundation in kg
Cu=100000;// Coefficient of elastic uniform compression for the soil in kN/m^3
Af=25;// Area of foundation block in m^2
k=Cu*Af;// Stiffness in kN/m
fn=1/(2*3.14)*sqrt(k/m);// Natural frequency on machine in Hz
disp(fn,"Natural frequency on machine in Hz");
// The answers vary due to round off error

// (a) Natural frequency when the weights are kept constant and the foundation area is doubled
disp("a)");
Af1=2*25;// Area of foundation block in m^2
k1=Cu*Af;// Stiffness in kN/m
fn1=1/(2*3.14)*sqrt(k1/m);// Natural frequency on machine in Hz
disp(fn1,"Natural frequency on machine in Hz");
// The answers vary due to round off error

// (b) Natural frequency when the area is kept constant and the weight is doubled
disp("b)");
m2=2*m;// Mass of foundation in kg
fn2=1/(2*3.14)*sqrt(k/m2);// Natural frequency on machine in Hz
disp(fn2,"Natural frequency on machine in Hz");
// The answers vary due to round off error
