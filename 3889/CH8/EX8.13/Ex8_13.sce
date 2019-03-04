  //Example 8.13
//page 563
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter:The Nyquist Stability Criterion and Stability Margins
//Topic: Bode Plot Stability margins
xdel(winsid())//close all graphics Windows
clear;
clc;
s=poly(0,"s")
P=200/((s+2)*(s+4)*(s+5))
G=syslin('c',P)
f=figure()
bode(G,0.01,10,"rad")
title('Bode plot')
//show_margins(G,'bode')//Will display margins on bode plot, however, with unit Hz instead of rad/s
a=gca()
a.parent.background=8; 
[g,fr]=g_margin(G)
disp(g,"Gain margin in dB=")
disp(fr*2*%pi,"Phase crossover frequency in rad/sec=")
[p ,f]=p_margin(G)
disp(p,"Phase margin in degrees=")
disp(f*2*%pi,"Gain crossover frequency in rad/sec=")
if f < fr then
    disp('Closed loop System is stable');
else
disp('The closed loop system is unstable');
end


