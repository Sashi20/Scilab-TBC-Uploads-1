//Example 2_2
clc;
clear;
close;

//Given data :
tl=1276.54;// True length in m
ml=1274.84;// Measured length in m
dl=30;// Designated length in m
al=dl*(tl/ml);// Actual length in m
disp(al,"Actual length in m");
al1=al-dl;
disp(al1,"Excess length of chain in m");
