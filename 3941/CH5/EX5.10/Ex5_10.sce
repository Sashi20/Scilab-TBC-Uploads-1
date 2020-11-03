//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 5.10
//Finding the parameters of buck converter

clc;
clear;
Vs=110;                          //Input voltage in volts.
Va=60;                           //Average load voltage in volts.
Ia=20;                           //Average load current in amperes.
f=20;                            //Frequency in KHZ.
Vl=0.025;                        //Peak to peak ripple for load volatage.
Il=0.05;                         //Peak to peak ripple for load current.
ILc=0.1;                         //Peak to peak ripple for filter Lc current.
del_Vc=Vl*Va;                    //Calculating the change in capacitor voltage.
R=Va/Ia;                         //Calculating the load resistance.
k=Va/Vs;                         //Calculating the duty cycle.
Is=k*Ia;                         //Calculating the source current.
del_IL=Il*Ia;                    //Calculating the change in inductor current.
del_I=ILc*Ia;                    //Calculating the change in load current.
Le=(Va*(Vs-Va))/(del_I*f*10^3*Vs); //Calculating the value of inductance Le.
Ce=(del_I)/(del_Vc*8*f*10^3);      //Calculating the value of capacitance Ce.
L=(k*del_Vc)/(del_IL*f*10^3);      //Calculating the approximate value icductance of circuit
printf("\n\t(a).The value of inductance Le is %0.2f microH",Le*10^6);
printf("\n\t    The vlaue of capacitance Ce is %0.2f microF",Ce*10^6);
printf("\n\t    The approximate value of inductance of the circuit L is %0.2f microH",L*10^6);
