//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 5.1
//Finding the Performances of a Dc–Dc Converter.

clc;
clear;
R=10;                   //Load resistance in Ohms.
Vs=220;                 //Input voltage in Volts.
Vch=2;                  //Voltage drop across the chopper in Volts.
f=1;                    //Chopper frequency in KHZ.
k=0.5                   //Duty cycle.
Va=k*(Vs-Vch);          //Calculating the average output voltage.
Vo=sqrt(k)*(Vs-Vch);    //Calculting the rms output voltage.
Po=k*((Vs-Vch)^2/R);    //Calculating the ouput power of converter.
Pi=k*Vs*((Vs-Vch)/R);   //Calculating the input power to converter.
eff=(Po/Pi);            //Calculating the converter efficiency.
Ri=Vs/(Va/R);           //Calculating the input resistance.
RFo=sqrt(((1/k)-1));    //Calculating the ripple factor.
V1=(((Vs-Vch)*2)/%pi)/sqrt(2);//Calculating the rms voltage.
printf("\n\t(a). The average output voltage Va is %iV",Va);
printf("\n\t(b). The rms output voltage Vo is %0.2fV",Vo);
printf("\n\t(c). The output power Po is %0.1fW",Po);
printf("\n\t     The input power Pi is %iW",Pi);
printf("\n\t     The converter efficiency is %0.2f percent",eff*100);
printf("\n\t(d). The input resistance Ri is %0.2fΩ",Ri);
printf("\n\t(e). The ripple factor RFo is %i percent",RFo*100);
printf("\n\t(f). The root mean square value V1 is %0.2fV",V1);
