clc;
//e.g 19.3
Vcc=20;
Rc=5*10**3;
Re=1*10**3;
Rb=100*10**3;
beta=150;
Vbe=0.7;
Ic=Vcc/(Re+(Rb/beta));
disp('mA',Ic*10**3,"Ic=");
Ie=Ic;
re=25/(Ie*10**3);
disp('ohm',re*1,"re=");
Ri=beta*(re+Re);
disp('kohm',Ri*10**-3,"Ri=");
Ris=(Rb*Ri)/(Rb+Ri);
disp('kohm',Ris*10**-3,"Ris=");
Av=Rc/Re;
disp(Av);
Gp=10*log10(Av);
disp('dB',Gp*1,"Gp=");
