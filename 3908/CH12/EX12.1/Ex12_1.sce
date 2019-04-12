//Example 12_1
clc;
clear;
close;

//Given data :
d=100;// Distance between points A and B in m
A=2.340;// Reading at point A in m
B=1.795;// Reading at point B in m
e=A-B;// True difference in elevation in m
A1=1.985;// Reading at point A when held at C in m
B1=1.435;// Reading at point B when held at C in m
ec=A1-B1;// Apparent difference in elevation when held at C in m
A=1.435;// Reading at A in m
// Add the true difference with A to get reading B
B=A+e;// Reading at B in m
disp(A,"Reading at A in m");
disp(B,"Reading at B in m");
if B1<B then
    disp("The line of collimation is inclined upwnwards.");
else
    disp("The line of collimation is inclined downwards.");
end
l=20;// legnth in m
cc=0.005*l/d;// Correction for reading at the closer peg
cf=0.005*(l+d)/d;// Correction for reading at the farther peg
Cc=B1-cc;// Correct reading at closer peg in m
Cf=A1-cf;// Correct reading at farther peg in m
D=Cf-Cc;// Difference in elevation in m
disp(D,"Difference in elevation in m");
