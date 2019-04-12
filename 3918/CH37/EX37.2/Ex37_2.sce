//Example 37_2
clc;
clear;
close;

//Given data :
// When the water level in the pond is low and the phreatic line is well away from the downstream face, the slope is considered to be dry.
disp("a)");
cdash=0;
t=30;// Teta in degree
b=18;// Beta in degree
SF=tand(t)/tand(b);// Safety Factor
disp(SF,"Safety Factor is");
// The answers vary due to round off error

// When the water level in the pond is high and the phreatic line meets the downstream slope well above the toe of the downstream face.
disp("b)");
gd=8;// Dry Unit weight in kN/m^3
gs=18;// Saturated Unit weight in kN/m^3
SF=(gd/gs)*(tand(t)/tand(b));// Safety Factor
disp(SF,"Safety Factor is");
// The answers vary due to round off error
disp("It may be noted that the slope is stable when the water level in the pond is low (Safety Factor = 1.75) but the Safety Factor reduces to 45% of the orignal value and to an unsafe value when the water level becomes high and phreatic line reaches the downstream face. Hence it is essential to provide internal drains.");
