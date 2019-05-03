clear ;
close ;
clc ;
s= poly(0,'s' );
H =[(4/3)/(1+ s),-2/(3+s),(2/3)/(4+ s)];
Sys = tf2ss(H);
clean(ss2tf(Sys));
printf("The state-space representation is as below\n");
disp(Sys)
