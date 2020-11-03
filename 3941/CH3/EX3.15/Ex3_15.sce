//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 3.15
//Finding the Critical Value of Inductor for Continuous Load Current.

clc;
clear;
Vs=120;                       //Supply voltage in volts.
f=60;                         //Frequency in Hz.
Vdc=100;                      //Dc output voltage in volts.
Idc=10;                       //Dc output current in amoere.
k=0.2575;                     //Average current ratio.
Le=6.5;                       //Filter inductance in milli Henry.
Idc1=15;                      //Dc output current in ampere.
kr=0.324;                     //RMS currnt ratio.
w=2*%pi*f;                    //Calculating frequency in rad/sec.
Vm=sqrt(2)*Vs;                //Calculating phase voltage.
//When Vdc=100V and Idc=10A.
x=Vdc/Vm;                     //Calculating voltage ratio.
alp=asind(x);                    //Calculating the firing angle.
Ipk=Idc/k;                    //Calculating peak current.
Lcr=Vm/(w*Ipk);               //Calculating critical value of inductance.
Irms=kr*Ipk;                  //Calculating rms current.
//When Le=6.5mH and Idc=15A.
Idc1=15;                       //Average output current in ampere.
Ipk1=Vm/(w*Le*10^-3);          //Calculating peak current.
k1=(Idc1/Ipk1)*100;            //Calculating current ratio.
x12=60;x13=65;                 //The voltage ratio from table 3.6.
k12=23.95;k13=15.27;           //Currnt ratio from table 3.6.
x1=60+((x13-x12)*(k1-k12))/(k13-k12);//Calculating Voltage ratio.
Vdc1=x1*10^-2*Vm;                    //Calculating dc output voltage.
alp12=36.87;alp13=40.54;             //Firing angle from table 3.6.
alp1=alp12+(((alp13-alp12)*(k1-k12))/(k13-k12));//Calculating the firing angle.
bet12=216.87;bet13=220.54;                      //Calculating firing angle.
bet=bet12+(((bet13-bet12)*(k1-k12))/(k13-k12));//Calculating firing angle.
kr12=31.05;kr13=26.58;                         //Calculating rms current ratio in table 3.6.
kr1=kr12+(((kr13-kr12)*(k1-k12))/(k13-k12));//Calculating rms current ratio.
Irms1=kr1/100*Ipk1;                         //Calculating rms current.
printf("\n\t(a).When Vdc=100V and Idc=10A");
printf("\n\t    The voltage ratio x is %0.4f",x);
printf("\n\t    The firing angle alp is %0.2f degree",alp);
printf("\n\t    The peak current Ipk is %0.2fA",Ipk);
printf("\n\t    The critical value of inductance Lcr is %0.2fmH",Lcr*10^3)
printf("\n\t    The rms current Irms is %0.2fA",Irms);
printf("\n\t(b).When Le=6.5mH and Idc=15A");
printf("\n\t    The peak current Ipk is %0.2fA",Ipk1);
printf("\n\t    The current ratio k is %0.2fpercent",k1);
printf("\n\t    The volatage ratio x is %0.2fpercent",x1);
printf("\n\t    The dc voltage Vdc is %0.2fV",Vdc1);
printf("\n\t    The firing angle alp is %0.2f degree",alp1);
printf("\n\t    The firing angle bet is %0.2f degree",bet);
printf("\n\t    The rms current ratio kr is %0.2fpercent",kr1);
printf("\n\t    The rms output current Irms is %0.2fA",Irms1);
//Some answers are changed due to round-off error.
//Some answers given in the textbook are wrong
