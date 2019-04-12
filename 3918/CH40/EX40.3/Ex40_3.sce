//Example 40_3
clc;
clear;
close;

//Given data :
x=2;// Amplitude in mm
T=0.15;// Period in seconds
w=2*3.14/T;// Natural frequency of vibration in rad/sec
v=w*x;// Maximum velocity in mm/sec
disp(v,"Maximum velocity in mm/sec");
a=w*w*x/1000;// Maximum accleration in m/sec^2
disp(a,"Maximum accleration in m/sec^2");
// The answers vary due to round off error
