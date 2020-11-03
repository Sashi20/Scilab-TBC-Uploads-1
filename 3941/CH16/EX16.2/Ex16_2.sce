//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 16.2
//Determining the Output Voltage and Power of a PV Cell.

clc;
clear;
Tem=30;                      //Temperature of the PV cell in degree Celsius.
Is=10;                     //Revese saturation current in nano Ampere.
Ic=1.2;                    //Solar current in ampere.
k=273;                     //Absolute temperature constant in kelvin
T=1.38*10^-23;             //Boltzman's constant in Joule per kelvin.
q=1.602*10^-19;             //Charge of a electron in Columb.
iL=0.6;                    //Load current in ampere.
VT=(T*(k+Tem))/(q);        //Calculating the thermal voltage, Fro Eq 2.2.
Vd=VT*log(((Ic-iL)/(Is*10^-9))+1);   //Calculating PV voltage.
//Calculating the load voltage.
function a=f(Vmp)
    a=((1+(Vmp/VT))*exp(Vmp/VT))-(1+(Ic/(Is*10^-9)))
endfunction
Vmp0=0.4
Vmp=fsolve(Vmp0,f);
Imp=Ic-((Is*10^-9)*(exp(Vmp/VT)-1));//Calculating load current.//(Book answer are wrong)
Pmax=Vmp*Imp;              //Calculating maximum power.
RL=Vmp/Imp;                //Calculating load resistance.
printf("\n\tThe thermal voltage VT is is %0.0fmV",VT*10^3);
printf("\n\t(a).The PV voltage Vd is %0.3fV",Vd);
printf("\n\t(b).The voltage Vmp is %0.3fV",Vmp);
printf("\n\t    The load current Imp is %0.3fA",Imp);
printf("\n\t    The maximum output power Pmax is %0.3fW",Pmax);
printf("\n\t    The load resitance RL is %0.3fOhm",RL);
//Book answers are wronng.
//Some answers are changed due to round-off error.
