clc;clear;
//OS windows 7
//scilab 6.0.1
//example 2.39
//calculation of percentage of purity of sugar
//given data
S=68; //specific rotation (in degrees) of sugar
l=2; //length (in dm) of tube containing sugar solution
theta=10.2; //optical rotation (in degrees)
d=90; //amount of sugar dissolved (in gm)
//calculation
c=theta/(S*l)*1000; //concentration (in gm per litre)
p=c/d*100; //per cent purity
printf("\npercentage of purity of sugar is %2.2f percent",p)
