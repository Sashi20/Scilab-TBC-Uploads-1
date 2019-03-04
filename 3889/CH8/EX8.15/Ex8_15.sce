  //Example 8.15
//page 568
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter:The Nyquist Stability Criterion and Stability Margins
//Topic: Bode Plot Stability margins
xdel(winsid())//close all graphics Windows
clear;
clc;

s=poly(0,'s')
G=1/(s*(s+1)*(s+2))
w=poly(0,'w')
G1= 1/ ((%i*w)*((%i*w)+1)*((%i*w)+2))
for i=0:0.001:0.5
G2=abs(horner((G1),i));
if G2>0.999 && G2<1.001  then
disp(i,'value of w for |G1(jw)|=1')
wval=i
end
end
//evans(G)
nyquist(syslin('c',G-1))
[phm,fr] = p_margin(syslin('c',G))
disp(phm,'Critical phase margin in degrees=')
td=(phm*%pi)/(180*wval)
disp(td,'Critical Dead time in sec=')
