//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 7.5
//Analysis of the Full-Bridge Resonant Inverter with Bidirectional Switches.

clc;
clear;
fo=3.5;                        //Frequency in KHz.
C=6;                           //Capacitance in micro farad.
L=50;                          //Inductance in micro henry.
R=2;                           //Resistance i  Ohm.
Vs=220;                        //Supply voltage in volts.
wr=sqrt((1/(L*C*10^-12))-((R^2)/(4*(L^2)*10^-12)));//Calculating the resonant frequency in radians per second from the Eq 7.21.
fr=wr/(2*%pi);              //Calculating resonant frquency in Hz.
Tr=1/fr;
t1=Tr/2;
To=1/(fo*10^3);
td=To-Tr;                  //Calculating turn off period of load current.
alp=R/(2*L*10^-6);
z=(alp*%pi)/wr
Vc=Vs*(((exp((alp*%pi)/wr))+1)/((exp((alp*%pi)/wr))-1));//Calculating the capacitor voltage from the Eq 7.14.
tm=(1/wr)*(atan(wr/alp));                         //Calculating the time at peak load current from the Eq 7.7
Ip=(((Vs+Vc)/(wr*L*10^-6))*(exp(-(alp*tm)))*(sin(wr*tm)));//Calculating the peak load current from Eq 7.28.
//Calculating average device current.
function Ia=f(t);
    Ia=(((Vs+Vc)/(wr*L*10^-6))*(exp(-(alp*t)))*(sin(wr*t)));
endfunction
y=intg(0,t1,f);
IA=fo*10^3*y;
//Calculating the rms device current.
funcprot(0);
function Ir=f(t);
    Ir=(((Vs+Vc)/(wr*L*10^-6))*(exp(-(alp*t)))*(sin(wr*t)))^2;
endfunction
x=intg(0,Tr/2,f);
IR=sqrt(fo*10^3*x);
Io=2*IR;                            //Calculating rms load current.
Po=Io^2*2                           //Calculating the output power.
Is=Po/Vs;                           //Calculating the average supply current.
printf("\n\twr=%0.0frad/sec\n\tfr=%0.1fHz\n\tTr=%0.0f micro sec\n\tt1=%0.0f micro sec\n\tTo=%0.2f micro sec",wr,fr,Tr*10^6,t1*10^6,To*10^6);
printf("\n\tThe turn off period of load current td is %0.2f micro sec",td*10^6);
printf("\n\tThe intial capacitor current Vc is %0.1fV",Vc);
printf("\n\t(a).The time at which peak load occurs tm is %0.2f micro sec",tm*10^6);
printf("\n\t    The peak load current Ip is %0.2fA",Ip);
printf("\n\t(b).The average device current IA is %0.2fA",IA);
printf("\n\t(c).The rms device current IR is %0.1fA",IR);
printf("\n\t(d).The rms load curret Io is %0.1fA",Io);
printf("\n\t(e).The output power Po is %0.0fW",Po);
printf("\n\t    The average supply current Is is %0.2fA",Is);
