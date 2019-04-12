//Example 20_3
clc;
clear;
close;

//Given data :
a=2;// Side of footing in m
UL=600;// Ultimate vertical load of footing in kN
M1=90;// Ultimate moment of footing in one direction in kNm
M2=60;// Ultimate moment of footing in other direction in kNm
e1=M1/UL;// Eccentricity in the direction 90kNM acts in m
L=a+(a*e1);// Dimension of footing increased in the direction of 90kNm moment in m
disp(L,"Dimension of footing increased in the direction of 90kNm moment in m");
e2=M2/UL;// Eccentricity in the direction 90kNM acts in m
L=a+(a*e2);// Dimension of footing increased in the direction of 60kNm moment in m
disp(L,"Dimension of footing increased in the direction of 60kNm moment in m");
