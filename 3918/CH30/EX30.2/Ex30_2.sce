//Example 30_2
clc;
clear;
close;

//Given data :
PC=200*(10^7);// Project cost in Rs.
P=75/100;// Interest percentage
LA=P*PC;//Loan Amount in Rs.
I=(8/100)*(1/12)*LA;// Interest per month on loan in Rs.

disp("a)");
T1=1.5;// Time for construction in months(45 days)
EC1=2.75;// Execution Cost in Crore
I1=I/(10^7)*T1;// Interest on Loan Cost in Crore
TC1=EC1+I1;// Total cost in Crore( Execution Cost + Interest Cost)
disp(TC1,"  Total cost in Crore( Execution Cost + Interest Cost)");

disp("b)");
T2=3;// Time for construction in months(90 days)
EC2=2;// Execution Cost in Crore
I2=I/(10^7)*T2;// Interest on Loan Cost in Crore
TC2=EC2+I2;// Total cost in Crore( Execution Cost + Interest Cost)
disp(TC2,"  Total cost in Crore( Execution Cost + Interest Cost)");

disp("c)");
T3=6;// Time for construction in months(180 days)
EC3=1.6;// Execution Cost in Crore
I3=I/(10^7)*T3;// Interest on Loan Cost in Crore
TC3=EC3+I3;// Total cost in Crore( Execution Cost + Interest Cost)
disp(TC3,"  Total cost in Crore( Execution Cost + Interest Cost)");

if((TC1<TC2)&&(TC1<TC3)) then
    disp("Option a) is adopted");
    elseif((TC2<TC1)&&(TC2<TC3)) then
    disp("Option b) is adopted");
    elseif((TC3<TC1)&&(TC3<TC2)) then
    disp("Option c) is adopted");
end
