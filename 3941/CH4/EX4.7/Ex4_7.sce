//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 4.7
//Finding the Transistor Voltage and Current with Clamping

clc;
clear;
Vcc=100;                    //Collector voltage in Volts.
Rc=1.5;                     //Collector resistance in Ohms.
Vd1=2.1;Vd2=0.9;            //Voltage across swintches in Volts.
Vbe=0.7;                    //Base emitter voltage in volts.
Vb=15;                      //Base voltage in Volts.
Rb=2.5;                     //Base resistance in Ohms.
bet=13.6                      //Duty cydle.
I1=(Vb-Vd1-Vbe)/Rb;         //Calculating the current from the source.
Ic1=bet*I1;                   //Calculating the collector current.
Vce=Vbe+Vd1-Vd2;            //Calculating the collector emitter voltage.
I_L=(Vcc-Vce)/Rc;            //Calculating the load current.
Ic2=bet*((I1+I_L)/(bet+1))       //Calculating the collector current.
printf("\n\t(a).The current from the source I1 is %0.2fA",I1);
printf("\n\t    The collector current without clamping Ic is %0.3fA",Ic1);
printf("\n\t(b).The collector emitter clamping voltage Vbe is %0.1fV",Vce);
printf("\n\t(c).The current through the load I_L is %0.1fA",I_L);
printf("\n\t    The collector current with clamping Ic is %0.3fA",Ic2);
//Some answers may be changed due to round-off error.
