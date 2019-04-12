clc;clear;
//OS windows 7
//scilab 6.0.1
//example 5.21
//calculation of fraction of time an electron spends in central one-third of the well
//given data
a=1; //For simplicity assuming length of well to be unity 
//calculation
x1=a/3; //lower limit
x2=2*a/3; //upper limit
P=integrate('2/a*(sin(%pi*x/a))^2','x',x1,x2)
printf("\nfraction of time an electron spends in central one-third of the well is %d percent",P*100)
//the answers vary due to round off error
