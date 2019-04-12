//Example 18_23
clc;
clear;
close;

//Given data :
RLa=56.385;// RL of A in m
D1=4;// Distance for line AB in km
D2=3;// Distance for line BC in km
D3=2;// Distance for line CD in km
D4=2;// Distance for line DE in km
D5=1;// Distance for line EA in km
TD=D1+D2+D3+D4+D5;// Total distance in km
E1=0.835;// Difference in elevation for line AB in m
E2=-1.684;// Difference in elevation for line BC in m
E3=1.175;// Difference in elevation for line CD in m
E4=0.678;// Difference in elevation for line DE in m
E5=-0.824;// Difference in elevation for line EA in m
DE=E1+E2+E3+E4+E5;// Discrepancy in elevation in m
Cb=DE*D1/TD;//  Correction for C in m
Cc=DE*D2/TD;//  Correction for B in m
Cd=DE*D3/TD;//  Correction for D in m
Ce=DE*D4/TD;//  Correction for E in m
Eb=RLa+E1+Cb;// Elevation of B in m
disp(Eb,"Elevation of B in m");
Ec=RLa+E2+Cc;// Elevation of C in m
disp(Ec,"Elevation of C in m");
Ed=RLa+E3+Cd;// Elevation of D in m
disp(Ed,"Elevation of D in m");
Ee=RLa+E4+Ce;// Elevation of E in m
disp(Ee,"Elevation of E in m");
// The answer provided in the textbook is wrong
// The answers vary due to round off error
