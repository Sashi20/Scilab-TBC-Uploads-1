//Example 6.1
//page 353
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter:Performance of Feedback Systems
xdel(winsid())//close all graphics Windows
clear;
clc;
s=poly(0,'s');
Kp=1
G=4500/((s)*(s+361.2))

//For system with critical damping
 
disp('Critical damping')
Ka=7.247
zeta=1
wn=180.6
wd=wn
ts=4.7/wd  //settling time
disp(ts,"Settling time(5% tolerance) for critically damped system ts=");
//Ess=361.2/(4500*Ka);//settling error constant
Ess=horner(1/(s*(1+Ka*G)),0)
disp(Ess,"Steady state error for critically damped system Ess=")


//for system with moderate damping
disp('moderate damping')
Ka=14.5
zeta=1/sqrt(2);
wn=255.44
wd=wn* sqrt(1-(zeta*zeta))
Tr=(%pi- acos(zeta))/wd   //rise time
Tp=%pi/wd    //peak time
Mp=100*exp((-%pi*zeta)/sqrt(1-(zeta*zeta)))      //peak overshoot
ts=3/wd  //settling time
//Ess=361.2/(4500*Ka)
Ess=horner(1/(s*(1+Ka*G)),0)
disp(ts,"Settling time(5% tolerance) for moderately damped system ts=")
disp(Ess,"Steady state error for moderately damped system Ess=")
disp(Tr,"Rise time for moderately damped system Tr=")
disp(Tp,"Peak time for moderately damped system Tp=")
disp(Mp,"Peak Overshoot percentage for moderately damped system Mp=")

//System with low damping
disp('low damping')
Ka=45.3
wn=451.5
zeta=0.4
wd=wn* sqrt(1-(zeta*zeta))
Tr=(%pi- acos(zeta))/wd   //rise time
Tp=%pi/wd    //peak time
Mp=100*exp((-%pi*zeta)/sqrt(1-(zeta*zeta)))      //peak overshoot
ts=3/wd  //settling time
//Ess=361.2/(4500*Ka)
Ess=horner(1/(s*(1+Ka*G)),0)
disp(ts,"Settling time(5% tolerance) for low damped system ts=")
disp(Ess,"Steady state error for low damped system Ess=")
disp(Tr,"Rise time for low damped system Tr=")
disp(Tp,"Peak time for low damped system Tp=")
disp(Mp,"Peak Overshoot percentage for low damped system Mp=")

