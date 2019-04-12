//Example 18_4
clc;
clear;
close;

//Given data :
A=42+(22/60)+(31.33/3600);// Observation A in degree
wa=6;// Weigth of A
W1=wa/(3^2);// Weight of 3A
disp(W1,"Weight of 3A");
W2=wa*(4^2);// Weight of A/4
disp(W2,"Weight of A/4");
