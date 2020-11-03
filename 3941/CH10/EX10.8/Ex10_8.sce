//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 10.8
//Finding the Thyristor Ratings of a Three-Phase Full Converter.

clc;
clear;
V=230;                      //Three phase input voltage in volts.
f=60;                       //Supply frequency in Hz.
Ia=150;                     //Average load current in ampere.
alp=%pi/3;                    //Delay angle in radians.
Vs=V/sqrt(3);               //Calculating the single phase voltage.
Vm=sqrt(2)*Vs;              //Calculating phase voltage.
Vdc=3*(sqrt(3)/%pi)*Vm*cos(alp);//Calculating average output voltage.
Pdc=Vdc*Ia;                   //Calculating output power.
IA=Ia/3;                      //Calculating average current through thyristor.
IR=Ia*sqrt(2/6);              //Calculating rms thyristor current.
IPT=Ia;                       //Calculating peak current through thyristor.
PIV=sqrt(3)*Vm;               //Calculating peak inverse voltage.
printf("\n\tThe single phase voltge Vm is %0.2fV",Vm);
printf("\n\tThe average output voltage Vdc is %0.1fV",Vdc);
printf("\n\tThe output power Pdc is %0.0fW",Pdc);
printf("\n\tThe average current through thyristor IA is %0.0fA",IA);
printf("\n\tThe rms current through a thyristor IR is %0.1fA",IR);
printf("\n\tThe peak inverse voltage PIV is %0.2fV",PIV);
//Answers may vary due to round-off error.
