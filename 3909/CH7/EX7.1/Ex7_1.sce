clc;clear;
//OS windows 7
//scilab 6.0.1
//example 7.1 
//calculation of saturated ion current
//given data
E_bar=49*10^3; //average energy deposited per unit disintegration (eV)
alpha=150*10^3; //total activity of the sample (in Bq)
e=1.6*10^-19; //electronic charge (in C)
W=32; //average energy deposited per ion pair in the gas (eV)
//calculation
I=(E_bar*alpha*e)/W; //saturated ion current (in Ampere)
printf("\nsaturated ion current is %1.2e Ampere",I)
//the answer provided in the textbook is wrong
