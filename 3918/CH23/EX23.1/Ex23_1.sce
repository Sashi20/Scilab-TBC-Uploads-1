//Example 23_1
clc;
clear;
close;

//Given data :
Sa=20;// Estimated settlement of structure A(sand) in mm
Sb=36;// Estimated settlement of structure B(clay) in mm

//Structure A
la=6000;// Column spacing in structure A in m
pa=80/100;// Percentage
DSa=pa*Sa;// Differential settlement of structure A in mm
ADa=DSa/la;// Angular distortion of structure A

//Structure B
lb=9000;// Column spacing in structure B in mm
pb=50/100;// Percentage
DSb=pb*Sb;// Differential settlement of structure B in mm
ADb=DSb/lb;// Angular distortion of structure B

if ADa>ADb then
    disp("Structure A experiences the higher angular distortion");
elseif ADb>ADa then
    disp("Structure B experiences the higher angular distortion");
else
    disp("Both Structures A and B have same angular distortion");
end

