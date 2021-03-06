// calculate peak to peak voltage swing under open and loaded conditions
// calculate maximum change in crystal thickness
clc;
d=2*10^-12;
t=1*10^-3;
Fmax=0.01;
e0=8.85*10^-12;
er=5;
A=100*10^-6;
Eo_peak_to_peak=2*d*t*Fmax/(e0*er*A);
disp(Eo_peak_to_peak,'peak voltage swing under open conditions')
Rl=100*10^6;
Cl=20*10^-12;
d1=1*10^-3;
Cp=e0*er*A/d1;
C=Cp+Cl;
w=1000;
m=[w*Cp*Rl/[1+(w*C*Rl)^2]^0.5];
El_peak_to_peak=[2*d*t*Fmax/(e0*er*A)]*m;

disp(El_peak_to_peak,'peak voltage swing under loaded conditions')
E=90*10^9;
dt=2*Fmax*t/(A*E);
disp(dt,'maximum change in crystal thickness (m)')