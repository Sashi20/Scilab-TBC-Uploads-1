clc;
Vsmin=8;
Vsmax=12;
Rs=2.2*10**3;
Vz=5;
RL=10*10**3;
Ismin=(Vsmin-Vz)/Rs;
Ismax=(Vsmax-Vz)/Rs;
IL=Vz/RL;
Izmin=Ismin-IL;
disp('mA',Izmin*10**3,"Izmin=");
Izmax=Ismax-IL;
disp('mA',Izmax*10**3,"Izmax=");
