//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 10.3
//Finding the Performances of a Three-Phase Full-Wave Converter.

clc;
clear;
V=208;                      //Three phase Supply voltage in volts.
f=60;                       //Supply frequency in Hz.
R=10;                       //Load resistance in Ohm.
Vs=V/sqrt(3);               //Calculating the single phase supply voltage.
Vm=sqrt(2)*Vs;              //Calculating the converter voltage.
Vn=50;                      //Average output voltage to be improved in percentage.
Vdm=(3*sqrt(3)*Vm)/%pi;     //Calculating the maximum output voltage.
Vdc=(Vn/100)*Vdm;           //Calculating the average output voltage.
alp=acosd(Vdc/Vdm);           //Calculating the delay angle.
Idc=Vdc/R;                 //Calculating the average output current.
Vrms=(sqrt(3)*Vm)*(sqrt(0.5+(((3*sqrt(3))/(4*%pi))*(cosd(2*alp)))));//Calculating rms voltage
Irms=Vrms/R;                //Calculating rms current.
IA=Idc/3;                   //Calculating average thyristor current.
IR=Irms*(sqrt(2/6));        //Calcultaing rms current of thyristor.
eff=(Vdc*Idc)/(Vrms*Irms);    //Calculating rectification efficiency.
Is=Irms*(sqrt(4/6));        //Calculating the rms line current.
VI=3*Vs*round(Is);          //calculating the input VAR rating.
TUF=(Vdc*Idc)/VI;           //Calculating transformer utilization factor.
Po=Irms^2*R;                //Calculating the output power.
PF=Po/VI;                   //Calculating the power factor.
printf("\n\tThe single phase supply voltage Vs is %0.1fV",Vs);
printf("\n\tThe converter voltage Vm is %0.2fV",Vm);
printf("\n\tThe maximum output voltage Vdm is %0.1fV",Vdm);
printf("\n\tThe average output voltage Vdc is %0.2fV",Vdc);
printf("\n\t(a).The delay angle alp is %0.0f degree",alp);
printf("\n\t(b).The average output current Idc is %0.2fA",Idc);
printf("\n\t    The rms output voltage Vrms is %0.2fV",Vrms);
printf("\n\t    The rms output current Irms is %0.2fA",Irms);
printf("\n\t(c).The average current of a thyristor IA is %0.2fA",IA);
printf("\n\t    The rms current of thyristor IR is %0.1fA",IR);
printf("\n\t(d).The rectification efficiency eff is %0.1fpercent",eff*100);
printf("\n\t(e).The rms input line current Is is %0.0fA",Is);
printf("\n\t    The input VAR rating VI is %0.1fVA",VI);
printf("\n\t    The transformer utilization factor TUF is %0.3f",TUF);
printf("\n\t(f).The output power Po is %0.1fW",Po);
printf("\n\t    The power factor PF is %0.3f(lagging)",PF);
//Answers may vary due to round-off error.
