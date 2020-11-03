//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 10.10
//Finding the Overlap Angle for a Three-Phase Full Converter.

clc;
clear;
Vs=230;                        //Supply voltage in volts.
fs=60;                          //Frequency in Hz.
Idc=150;                       //Average load current in ampere.
Lc=0.1;                        //Commutatting inductance in milli henry.
alp0=10;                         //Overlap angle in degree.
alp1=30;                         //Overlap angle in degree.
alp2=60;                         //Overlap angle in degre.
Vm=sqrt(2)*Vs/sqrt(3);         //Calculating phase voltage.
Vdm=(3*sqrt(3)*Vm)/%pi;        //Calculating diode voltage.
//Calculating the overlap angles.
mu0=(acosd(cosd(alp0)-((6*fs*Idc*Lc*10^-3)/Vdm)))-alp0;
mu1=(acosd(cosd(alp1)-((6*fs*Idc*Lc*10^-3)/Vdm)))-alp1;
mu2=(acosd(cosd(alp2)-((6*fs*Idc*Lc*10^-3)/Vdm)))-alp2;
printf("\n\t    The overlap angles are")
printf("\n\t(a).For alp = %0.0f°, mu = %0.2f degree",alp0,mu0);
printf("\n\t(b).For alp = %0.0f°, mu = %0.2f degree",alp1,mu1);
printf("\n\t(c).For alp = %0.0f°, mu = %0.2f degree",alp2,mu2);
//Some answers are changed due to round-off error.