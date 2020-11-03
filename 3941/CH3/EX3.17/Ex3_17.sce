//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 3.17
//Finding the Effect of Diode Recovery Time on the Output Voltage of a Rectifier

clc;
clear;
trr=50;                     //Reverse recovery time in micro seconds.
Vs=120;                     //Supply voltage in volts.
fs1=2;                      //Supply frequency in kHz.
fs2=60;                     //Supply frequency in Hz.
Vm=sqrt(2)*Vs;              //Calculating the phase voltage.
Vdc=0.6336*Vm;              //Calculating average output voltage.
//When fs=2000Hz,
Vrr1=(Vm/%pi)*(1-cos(2*%pi*fs1*10^3*trr*10^-6));//Calculating the reduction of average output voltage.
//When fs=60Hz,
Vrr2=(Vm/%pi)*(1-cos(2*%pi*fs2*trr*10^-6));//Calculating the reduction of average output voltage.
printf("\n\t(a).When fs=2000Hz");
printf("\n\t    The reduction of average output voltage is %0.1fV or %0.2f percent of Vdc",Vrr1,Vrr1/Vdc*100);
printf("\n\t(b).When fs=60Hz");
printf("\n\t    The reduction of average output voltage is %0.1eV or %0.2e percent of Vdc",Vrr2,Vrr2/Vdc*100);
//Some answers are changed due to round-off error.
