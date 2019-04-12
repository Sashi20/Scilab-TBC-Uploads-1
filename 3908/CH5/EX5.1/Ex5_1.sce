//Example 5_1
clc;
clear;
close;

//Given data :
d=25;// Displacement of the plotted point in cm
// (a) 1 mm = 0.1 m
k=1/(0.1*1000);// Representative fraction
E=d*k;// Displacement of plotted point cm
disp(E,"(a) Displacement of plotted point in cm");
disp("This is significant error");

// (b) 1 mm = 1 m
k=1/(1*1000);// Representative fraction
E=d*k;// Displacement of plotted point cm
disp(E,"(b) Displacement of plotted point cm");
disp("This is limiting error");

// (c) 1 mm = 2 m
k=1/(2*1000);// Representative fraction
E=d*k;// Displacement of plotted point cm
disp(E,"(c) Displacement of plotted point cm");
disp("This is not significant error");
