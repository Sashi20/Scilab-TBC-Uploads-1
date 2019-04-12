//Example 15_44
clc;
clear;
close;

//Given data

// Sight distance S=L+(100*(sqrt(h1)+sqrt(h2))^2/M)
// S=1.5*L
g1=0.8;// Gradient 1
g2=-1.2;// Gradient 1
M=g1-g2;
h1=1.13;// Height of eye level of driver in m
h2=h1;// in m
// Rearranging the sight distance eq to 1.5L = L + 100*(sqrt(h1)+sqrt(h2))^2/M)
L=2*100*((sqrt(h1)+sqrt(h2))^2)/M;// Length of vertical curve in m
disp(L,"Length of vertical curve in m");
