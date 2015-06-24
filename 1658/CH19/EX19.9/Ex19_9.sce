clc;
//e.g 19.9
Vcc=10;
Rc=5*10**3;
RE1=500;
R1=50*10**3;
R2=10*10**3;
Rs=600;
rE=500;
beta1=50;
Vbe=0.7;
vs=100*10**-3;
Rl=50*10**3;
Vth=(Vcc*R2)/(R1+R2);
disp('V',Vth*1,"Vth=");
Rth=(R1*R2)/(R1+R2);
disp('10^3ohm',Rth*10**-3,"Rth=");
RE=RE1+rE;
disp('ohm',RE*1,"RE=");
Ie=(Vth-Vbe)/(RE+(Rth/beta1));
disp('mA',Ie*10**3,"Ie=");
re=25/(Ie*10**3);
disp('ohm',re*1,"re=");
Ri=beta1*(re+rE);
disp('Kohm',Ri*10**-3,"Ri=");
Ris=(Rth*Ri)/(Rth+Ri);
disp('ohm',Ris*1,"Ris=");
rl=(Rc*Rl)/(Rc+Rl)
disp('kohm',rl*10**-3,"rl=");
Av=rl/(re+rE);
disp(Av);
VinBYVs=(Ris)/(Ris+Rs);
disp('V',VinBYVs*1,"VinBYVs=");
Avs=Av*VinBYVs;
disp(Avs);
V0=Avs*vs;
disp('mV',V0*10^3,"V0=");//answer printed in the book is wrong(variation in decimal point) 
