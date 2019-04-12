//Example 18_3
clc;
clear;
close;

//Given data :
A=32+(16/60)+(18/3600);// Observation A in degree
wa=3;// Weight of A
B=26+(14/60)+(12/3600);// Observation B in degree
wb=2;// Weight of B
S=A+B;// Sum of angles in degree
D=A-B;// Difference between angles in degree
W=1/((1/wa)+(1/wb));// Weight of the mean
disp(W,"Weight of the mean");
