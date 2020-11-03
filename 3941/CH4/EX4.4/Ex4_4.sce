//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 4.4
//Finding the Case Temperature of a Transistor.

clc;
clear;
Tj=150;                  //Maximum temperature of transistor in °C.
Ta=25;                   //The ambient temperature of transistor in °C.
Rjc=0.4;Rcs=0.1;Rsa=0.5; //The thermal impedences of transistor in °C/W.
Pt=(Tj-Ta)/(Rjc+Rcs+Rsa);//Calculating the maximum power dissipated.
Tc=Tj-(Pt*Rjc);          //Calculating the case temperature.
printf("\n\t(a).The maximum power dissipated Pt is %iW",Pt);
printf("\n\t(b).The case temperature Tc is %i°C",Tc);
