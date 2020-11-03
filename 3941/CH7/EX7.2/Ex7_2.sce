//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 7.2
//Analysis of the Half-Bridge Resonant Inverter.

clc;
clear;
Vs=220;                           //Supply voltage in volts.
fo=7                              //Ouput frequency in KHZ.
C=3;                              //Capacitance in micro farad.
L=50;                             //Inductance in micro Henry.
R=2;                              //Resistance in Ohm.
Ce=2*C;                           //Calculating the effective resistance.
wr=sqrt((1/(2*L*10^-6*C*10^-6))-((R^2)/(4*L^2*10^-12)));
alp=R/(2*L*10^-6);
fr=wr/(2*%pi);                        //Calculating the resonant frequcncy in HZ.
Tr=1/fr;                              //Calculating time per cycle.
Vc=Vs/((exp((alp*%pi)/wr))-1);        //Calculating the capacitor voltage.
Vc1=Vs+Vc;                           //Calculating the maximum capacitor voltage.
tm=(1/wr)*(atan(wr/alp));           //Calculating the time at peak load current
Ip=((Vc1)*(exp(-(alp*tm)))*(sin(wr*tm)))/(wr*L*10^-6);//Calculating the peak load current.
//Calculating the rms load current.
function Io1=f(t);
    Io1=(((Vs+Vc)/(wr*L*10^-6))*(exp(-(alp*t)))*(sin(wr*t)))^2;
endfunction
x=intg(0,Tr/2,f);
Io=sqrt(2*fo*10^3*x);
Ips=Ip/2;                          //Calculating the peak supply current.
funcprot(0);
function Ia=f(t);
    Ia=(((Vs+Vc)/(wr*L*10^-6))*(exp(-(alp*t)))*(sin(wr*t)));
endfunction
y=intg(0,Tr/2,f);
IA=fo*10^3*y;
Ipk=Ip;                          //The peak transistor current.
IR=Io/sqrt(2);                   //Calculating rms transistor current.
printf("\n\twr=%irad/sec\n\talp=%i\n\tfr=%0.1frad\n\tTr=%0.0f micro sec",wr,alp,fr,Tr*10^6);
printf("\n\t(a).The effective capacitance Ce is %i micro Farad",Ce);
printf("\n\t    The maximum time tm is %0.2f micro sec",tm*10^6);
printf("\n\t    The peak load current Ip is %0.2fA",Ip);
printf("\n\t    The capacitor voltage Vc is %0.1fV",Vc);
printf("\n\t    The maximum capacitor voltage Vc1 is %0.1fV",Vc1);
printf("\n\t    The rms value of load current Io is %0.1fA",Io);
printf("\n\t    Thr Peak supply current Ips is %0.2fA",Ips)
printf("\n\t(b).The average transistor current IA is %0.2fA",IA);
printf("\n\t(c).The rms transistor current IR is %0.2fA",IR);

