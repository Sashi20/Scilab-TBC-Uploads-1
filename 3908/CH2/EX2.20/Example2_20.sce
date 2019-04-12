//Example 2_20
clc;
clear;
close;

//Given data :
alpha=4;// angular error in degree
// (a) 1 cm = 10 m
// The plotting accuracy is taken as 0.025 cm
s=10;// Equivalent Scale in m
l=s*0.025/sind(4);// Maximum length of offset in m
disp(l,"(a) Maximum length of offset in m");
// The answer provided in the textbook is wrong

// (b) 1 cm = 30 m
s=30;// Equivalent Scale in m
l=s*0.025/sind(4);// Maximum length of offset in m
disp(l,"(b) Maximum length of offset in m");
