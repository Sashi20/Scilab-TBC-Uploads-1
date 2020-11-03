//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 16.3
//Determining the Effects of Practical Model Parameters on Output Voltage and the Output Power of PV Cells.

clc;
clear;
Tem=30;                      //Temperature of the PV cell in degree Celsius.
Is=10;                     //Revese saturation current in nano Ampere.
Ic=1.2;                    //Solar current in ampere.
iL=0.6;                    //Load current in ampere.
Rs=20;                     //Seies resistance in milli Ohm.
Rp=2;                      //Parallel resistance in Kilo Ohm.
k=273;                     //Absolute temperature constant in kelvin
T=1.38*10^-23;             //Boltzman's constant in Joule per kelvin.
q=1.602*10^-19;             //Charge of a electron in Columb.
VT=(T*(k+Tem))/(q);        //Calculating the thermal voltage, Fro Eq 2.2.
//Calculating the diode voltage.
function a=f(vd)
    a=iL-Ic+(Is*10^-9*(exp(vd/VT)-1))+(vd/(Rp*10^3))
endfunction
vd0=0.4
Vd=fsolve(vd0,f);
VL=Vd-(Rs*10^-3)*(Ic-(Is*10^-9*(exp(Vd/VT)-1))-(Vd/(Rp*10^3)));//Calculating the load voltage.
PL=VL*iL;                  //Calculating output load power.
printf("\n\tThe Thermal voltage VT is %0.0fmV",VT*10^3);
printf("\n\t(a).The voltage Vd is %0.3fV",Vd);
printf("\n\t    The load voltage VL is %0.3fA",VL);
printf("\n\t    The output power PL is %0.3fW",PL); 
//Some answers are changed due to round-off error.
