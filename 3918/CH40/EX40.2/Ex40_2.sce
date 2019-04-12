//Example 40_2
clc;
clear;
close;

//Given data :
m=200;// Mass of milling machine in kg
k=1*10^6;// Stiffness in N/m
wn=sqrt(k/m);// Natural frequency of vibration of the machine in rad/sec
Tn=2*3.14/wn;// Natural time period of vibration of the machine in sedonds
disp(Tn,"Natural time period of vibration of the machine in sedonds");
// The answers vary due to round off error
