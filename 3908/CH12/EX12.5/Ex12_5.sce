//Example 12_5
clc;
clear;
close;

//Given data :
A1=2.615;// Reading of A at midway between A and B in m
B1=3.175;// Reading of B at midway between A and B in m
A2=1.905;// Reading at A with level at A in m
B2=2.340;// Reading at B with level at A in m
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
// Correct reading at A = A2 + 25*tan(alpha)
// Correct reading at B = B2 + 75*tan(alpha)
D=B2-A2;// Difference in correct reading in m
E=75-25;
// D= 0.435 + 50*tan(alpha)
// 0.435 + 25*tan(alpha)= True difference in elevation (te)
alpha=atand((te-D)/E);// Inclination of line of collimation in degree
m=alpha*60;// Inclination of line of collimation in minutes
disp(m,"Inclination of line of collimation in minutes");
// The answers vary due to round off error
Ca=A2+(25*tand(alpha));// Correct reading at A in m
disp(Ca,"Correct reading at A in m");
Cb=B2+(75*tand(alpha));// Correct reading at A in m
disp(Cb,"Correct reading at A in m");
// The answers vary due to round off error
