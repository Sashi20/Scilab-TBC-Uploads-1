//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 2.6
//Finding the voltage and Current in an LC Circuit

clc;
clear
Vo=220;         //Intial voltage of capacitor in Volts.
C=20;           //Capacitance in micre farad.
L=80;           //Inductance in micro Henry.
printf("\n\tThe circuit is shown in the Figure 2.19a");
wo=10^6*sqrt(C*L);
Ip=Vo*sqrt(C/L);
t1=%pi*sqrt(L*C);
Vct=-Vo*cos(%pi);
printf("\n\t(a). The peak current Ip is %iA",Ip);
printf("\n\t(b). The conduction time t1 is %0.2fμs",t1);
printf("\n\t(c). The capcitor voltage at time t1 Vc(t1) is %iV",Vct);
