// Example 7.3.d:modulus of elasticity
clc;
clear;
close;
format('v',8)
yl=40;//yeild load in kN
ml=71.5;//maximum load in kN
fl=50.5;//fracture load in kN
glf=79.5;//gauge length of fratture in mm
st=7.75*10^-4;//strain at load of 20kN
d=12.5;//specimen diamtere in mm
sl=62.5;//specimen length in mm
A=(%pi*(d*10^-3)^2)/4;// in meter square
ylp=((yl*10^3)/(A));//yeild point stress in N/m^2
uts=((ml*10^3)/(A));//ultimate tensile strangth in N/m^2
pel=((glf-sl)/sl)*100;//percentage elongation
strss=((20*10^3)/A);//stress at 20kN in N/m^2
mel=strss/st;//modulus of elasticity in N/m^2
disp(mel,"modulus of elasticity in N/m^2")
