//Example5.13  // To calculate unity gain bandwidth and maximum close loop gain
clc;
clear;
close;
A = 10^3 ;  // open loop gain
fo = 60 ; // Hz  // dominant pole frequency
fdb = 12*10^3 ; //Hz  // 3-db frequency

// the unity gain bandwidth
f1 = fo*A ;
 disp('the unity gain bandwidth is = '+string(f1)+'Hz');

// the maximum close loop gain
ACL = (f1/fdb) ;
disp('the maximum close loop gain ACL is = '+string(ACL)+'');

