//exa 1.4
clc;clear;close;
format('v',6);
//12 to 5 am
L1=20;//MW
t1=5;//hours
//5 to 9 am
L2=40;//MW
t2=4;//hours
//9 to 6 pm
L3=80;//MW
t3=9;//hours
//6 to 10 pm
L4=100;//MW
t4=4;//hours
//10 to 12 am
L5=20;//MW
t5=2;//hours
//Energy Poduced in 24 hours
E=L1*t1+L2*t2+L3*t3+L4*t4+L5*t5;//MWh
disp(E,"Energy Supplied by the plant in 24 hours(MWh) :");
LF=E/24;//%//Load Factor
disp(LF,"Load Factor(%)");
