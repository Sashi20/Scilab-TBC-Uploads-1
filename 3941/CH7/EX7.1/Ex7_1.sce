//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 7.1
//Analysis of the Basic Resonant Inverter.

clc;
clear;
L=50;                           //Inductance in micro Henry.
C=6;                            //Capacitance in micro Farad.
R=2;                            //Resistance in ohm.
Vs=220;                         //Input voltage in volts.
fo=7;                           //Frequency in KHZ.
toff=10;                        //Turn of time of tansistors in micro seconds.
wo=2*%pi*fo*10^3;
wr=sqrt((1/(L*C*10^-12))-((R^2)/(4*(L^2)*10^-12)));//Calculating the resonant frequency in radians per second.
fr=wr/(2*%pi);                          //Calculating the resonant frequcncy in HZ.
Tr=1/fr;                                //Calculating the time per cycle.
alp=R/(2*L*10^-6);
toff1=(%pi/wo)-(%pi/wr);              //Calculating the circuit turn off time.
fmax=(1/(2*((toff*10^-6)+(%pi/wr)))); //Calculating the maximum frequency.
Vc=Vs/((exp((alp*%pi)/wr))-1);       //Calculating the capacitor voltage.
Vc1=Vs+Vc;                           //Calculating the maximum capacitor voltage.
Vpp=Vc+Vc1;                         //Calculating peak to peak capactor voltage.
tm=(1/wr)*(atan(wr/alp));           //Calculating the time at peak load current.
Ip=((Vc1)*(exp(-(alp*tm)))*(sin(wr*tm)))/(wr*L*10^-6);//Calculating the peak load current.
//Ploting the graph for I(t), Vc(t), Is(t).
to=[0 22.47 58 71.4 93.87 129.4];      //Time in micro seconds
Io1=[0 70.82 0 0 -70.82 0];            //Output current in amphere
t1=[0 22.47 58 71.4 93.87 129.4];     //Time in micro seconds.
Is=[0 70.82 0 0 0 0];                 //Supply current in amperes.
t2=[0 16 22.47 58 71.4 93.87 121.6];       //Time in micro seconds.
Vc11=[-100.4 0 78.36 320.4 310.2 78.36 0];//Capacitor voltage in volts.
subplot(311);
plot(to,Io1)                             //Plot of Io(t).
xlabel("Time in  micros");
ylabel("current Io(t) in Amperes");
title("Plot of Io(t)");
subplot(312);
plot(t1,Is);                          //Plot of Is(t).
xlabel("Time in  micros");
ylabel("Is(t) in Amperes");
title("Plot of Ic(t)");
subplot(313);
plot(t2,Vc11);                        //Plot of Vc(t);
xlabel("Time in  micros");
ylabel("Vc(t) in volts");
title("Plot of Vc(t)");
//Calculating the rms load current.
function Io2=f(t);
    Io2=(((Vs+Vc)/(wr*L*10^-6))*(exp(-(alp*t)))*(sin(wr*t)))^2;
endfunction
x=intg(0,Tr/2,f);
Io=sqrt(2*fo*10^3*x);
Po=Io^2*R;                        //Calculating the output power.
Is=Po/Vs                          //Calculating the average supply current.
//Calculating the average transistor current.
funcprot(0);
function Ia=f(t);
    Ia=(((Vs+Vc)/(wr*L*10^-6))*(exp(-(alp*t)))*(sin(wr*t)));
endfunction
y=intg(0,Tr/2,f);
IA=fo*10^3*y;
Ipk=Ip;                          //The peak transistor current.
IR=Io/sqrt(2);                   //Calculating rms transistor current.
printf("\n\two=%irad/s\n\twr=%irad/s\n\tfr=%0.1fHz\n\tTr=%0.0f micros\n\talp=%i",wo,wr,fr,Tr*10^6,alp);
printf("\n\t(a).The circuit turn off time toff is %0.2f micro sec",toff1*10^6);
printf("\n\t(b).The maximum possible frequency fmax is %0.0fHz",fmax);
printf("\n\t(c).The capacitor voltage Vc is %0.1fV",Vc);
printf("\n\t    The maximum capacitor voltage Vc1 is %0.1fV",Vc1);
printf("\n\t    The peak to peak capacitor voltage Vpp is %0.1fV",Vpp);
printf("\n\t(d).The maximum time tm is %0.2f micro sec",tm*10^6);
printf("\n\t    The peak load current Ip is %0.2fA",Ip);
printf("\n\t(e).The sketeches for i(t), Vc(t) and is(t) are shown in graph");
printf("\n\t(f).The rms value of load current Io is %0.1fA",Io);
printf("\n\t(g).The output power Po is %0.0fW",Po);
printf("\n\t(h).The average supply current Is is %0.2fA",Is);
printf("\n\t(i).The average transistor current IA is %0.2fA",IA);
printf("\n\t    The peak transistor current Ipk is %0.2fA",Ipk);
printf("\n\t    The rms transistor current IR is %0.2fA",IR);
