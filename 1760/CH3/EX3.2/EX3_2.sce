      //EXAMPLE 2-32    PG NO 173
Vp=400;     //Peak voltage
VL=400;
Z=8-%i*10;     //Impedance
Ip=VL/12.81;     
IL=sqrt(3)*Ip;
S=sqrt(3)*VL*IL;
P=S*cos(-51.34);
Q=S*sin(-51.34);
Vab=Vp+%i*0;
Vbc=-200-%i*346.410;
Vca=-200+%i*346;
Iab=Vab/Z;
Ibc=Vbc/Z;
Ica=Vca/Z;
Ia=Iab-Ibc;
Ib=Ibc-Iab;
Ic=Ica-Ibc;
disp('i) Peak current   =  '+string (Ip)+'A ')
disp('i) S   =  '+string (S)+'VA ')
disp('i) Active Power   =  '+string (P)+'W ')
disp('i) Reactive power   =  '+string (Q)+'Vars ')
disp('i) Iab is in reactance form  =  '+string (Iab)+'A ')
disp('i) Ibc is in  reactance form =  '+string (Ibc)+'A ')
disp('i) Ica is in reactance   form=  '+string (Ica)+'A ')
disp('i) Ia is in  reactance form =  '+string (Ia)+'A ')
disp('i) Ib is in reactance form  =  '+string (Ib)+'A ')
disp('i) Ic is in reactance  =  '+string (Ic)+'A ')
