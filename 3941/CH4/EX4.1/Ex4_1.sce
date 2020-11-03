//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 4.1
//Finding the Saturation Parameters of a BJT.

clc;
clear;
Rc=11;                        //Load resistance in Ohm.
Vcc=200;                      //Supply voltage in Volts.
VB=10;                        //Input Voltage to the base in Volts.
Vce_sat=1;                    //Collector emitter Voltage in Volts.
Vbe_sat=1.5;                  //Base emitter Voltage in Volts.
ODF=5;                        //Over drive factor.
bet_min=8;bet_max=40;             //Maximum and minimum current gain.
Ics=(Vcc-Vce_sat)/(Rc);       //Calculating the collector current.
Ibs=Ics/bet_min;                //Calculating the base current.
Ib=ODF*Ibs;                   //Calculating the base current with ODF.
Rb=(VB-Vbe_sat)/(Ib);         //Calculating the base Resistance.
bet_forced=Ics/Ib;              //Calculating the Forced current gain.
PT=(Vbe_sat*Ib)+(Vce_sat*Ics);         //calculating the total power loss.
printf("\n\tThe Collector current Ics is %0.1fA",Ics);
printf("\n\tThe Base current Ibs is %0.4fA",Ibs);
printf("\n\tThe base current for an ODF of 5, Ib is %0.4fA",Ib);
printf("\n\t(a).The value of base resistance Rb is %0.4f Ohm",Rb);
printf("\n\t(b).The forced current gain beta_forced is %0.1f",bet_forced);
printf("\n\t(c).The total power loss Pt is %0.2fW",PT);
//Answers in the book are varied due to ruounoff error.
