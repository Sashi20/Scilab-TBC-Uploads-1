//Example 12_2
clc;
clear;
close;

//Given data :
A1=1.865;// Reading of A at midway between A and B in m
B1=1.925;// Reading of B at midway between A and B in m
A2=1.405;// Reading at A with level at A in m
B2=1.460;// Reading at B with level at A in m
te=B1-A1;// True difference in elevation in m
ta=B2-A2;// Apparent difference in elevation in m
A=A2;// Reading at A with level at A in m
// Add the true difference with A to get reading B
B=A+te;//Reading at B with level at A in m
disp(B,"Correct reading at B in m");
if B2<B then
    disp("The line of collimation is inclined downwards.");
else
    disp("The line of collimation is inclined upwards.");
end
