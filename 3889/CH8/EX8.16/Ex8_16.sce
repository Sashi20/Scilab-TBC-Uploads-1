  //Example 8.16
//page 570
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter:The Nyquist Stability Criterion and Stability Margins
//Topic: Bode Plot Stability margins
xdel(winsid())//close all graphics Windows
clear;
clc;
//There may be approximation errors by author
s=poly(0,'s')
G=syslin('c',1/(s*(s+1)*(s+2)))
bode(G,0.01,10^5,"rad")
title('Bode plot of 1/(s*(s+1)*(s+2))')
a=gca()
a.parent.background=8; 
[g,fr]=g_margin(G)
disp(g,"Gain margin in dB=")
disp(fr*2*%pi,"Phase crossover frequency in rad/sec=")
[p ,f]=p_margin(G)
disp(p,"Phase margin in degrees=")
disp(f*2*%pi,"Gain crossover frequency in rad/sec=")
td=(p*%pi)/(180*f)
G1=syslin('c',((s+1)*(1-(td*s/2)))/(s*(1+(td*s/2))*(s+1)*(s+2)))
figure()
bode(G1,0.01,10^5,"rad")
title('Bode plot of system with critical time delay of 2.09 sec for stability')
a=gca()
a.parent.background=8; 
