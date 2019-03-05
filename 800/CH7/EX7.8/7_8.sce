//clear//
clc
clear
exec('7_8.sci');
Vmax = (Et2/Et1)*Vmax1
t = (Km/Vmax)*log(1/(1-X))+Curea0*X/Vmax;
disp("t")
disp(t)
disp("s")