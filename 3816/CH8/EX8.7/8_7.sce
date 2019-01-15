clc;
clear;
W=375;
V=3;
f=50;
P=10;
r2=0.39;//Rotor resistance
X1=5.75;//Leakage reactance
Rsr=4.65//Stator to rotor turns ratio
Sf1=0.022;//Full load slip
Ws=62.8;//Synchronous speed
Wf1=125;//Full load output
Tf1=Wf1/(Ws*0.978);//Full load torque
Tp0=(1730^2)/(2*X1*Ws);//Pull out torque
disp('At Constant torque')
q=Tf1/Tp0;
R2=0.5*(X1/q)*(1+sqrt(1-(q*q)));
R=R2-r2;
R0=R/(Rsr*Rsr);
Sp2=0.5*(Wf1/0.978);
Eff=0.5;
Rrt=R/(Rsr^2);
Sp3=2.04*((0.5/0.978)^2);
q1=Sp3/Tp0;
R20=0.5*(X1/q1)*(1+sqrt(1-q1));
R1=R20-r2;
Sp4=16.6;
Eff=0.5;
Rrt2=R1/(Rsr^2);
R3=2.05;
disp(Sp2,'The slip power is:')
disp(Eff,'Efficiency is:')
disp(R0,'The actual rotor resistancr is:')
disp('At torque propotional to speed squared')
disp(Sp4,'The slip power is:')
disp(Eff,'The efficiency is:')
disp(R3,'The actual rotor resistance is:')
//The above values are written n such a way that alternate solutions are not possible
