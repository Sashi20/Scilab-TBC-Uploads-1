clc;
VCC=10;
Rc=5*10**3;
RB=1*10**6;
RE=1*10**3;
RL=10*10**3;
B1=100;
B2=100;
B=B1;
IE=VCC/(RE+(RB/B1));
re=25/(IE*10**3);
Ri1=B*re;
disp('ohm',Ri1*1,"Ri1=");
Ri2=B*re;
disp('ohm',Ri2*1,"Ri2=");
Ro1=(Rc*Ri2)/(Rc+Ri2);
disp('ohm',Ro1*1,"Ro1=");
Ro2=(Rc*RL)/(Rc+RL);
disp('ohm',Ro2*1,"Ro2=");
Av1=Ro1/re;
disp(Av1);
Av2=Ro2/re;
disp(Av2);
Av=Av1*Av2;
disp(Av);
Gv=20*log10(Av);
disp('dB',Gv*1,"Gv=");
