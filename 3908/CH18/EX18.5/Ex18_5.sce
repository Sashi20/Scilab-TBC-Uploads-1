//Example 18_5
clc;
clear;
close;

//Given data :
A=42+(32/60)+(40/3600);// Observation A in degree
wa=3;// Weight of A
B=51+(29/60)+(20/3600);// Observation B in degree
wb=2;// Weight of B
C=180-(A+B);// Observation C in degree
m=(C-int(C))*60;// in minutes
disp(int(m),int(C),"Observation C in degree and minute respectively");
W1=1/((1/wa)+(1/wb));// Weight of A+B
W2=W1;// Weight of C
disp(W2,"Weight of C")
// The answers vary due to round off error
