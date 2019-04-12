clc;clear;
//OS windows 7
//scilab 6.0.1
//example 7.11
//calculation of maximum voltage fluctuation in applied voltage
//given data
n2_minus_n1_by_n_av=0.1/100; //counter error
s=3; //slope of plateau region
//calculation
V2_minus_V1=n2_minus_n1_by_n_av*100*100/s; //maximum voltage fluctuation (in V)
printf("\nmaximum voltage fluctuation in applied voltage is %1.1f V",V2_minus_V1)
