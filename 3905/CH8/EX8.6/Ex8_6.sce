//Example 8.6, Page Number 460
//Cascode Charge-Redistribution Amplifier
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
Vcc=5                      //Gate source voltage in volts(V)
Vtn=0.74                        //Threshold voltage in volts(V)
Vref=5                //Reference voltage in volts(V)
Weff=1.8*(10^-6)               //Effective width of 
L=1.2*(10^-6)               //Effective length of
delta_L=0.3*(10^-6)                   //Difference in effective length in metres(m)
Leff=L-delta_L                     //Effective length
kn=5.4*(10^-6)                   //Device parameter in Area per Voltage aquare(A/V**2)
Vt=0.74       //Threshold voltage in volts(V)

//Outputs
Vout_high=Vcc                 //High voltage level of output node in volts(V)
Vbus_high=Vref-Vtn*(Vref)         //High voltage level of output node in volts(V)
I_M3=(1/2)*(Weff/Leff)*kn*((Vcc-Vt)^2)   //Drain current in transistor M3 amperes(A)
//The low voltages has to be solved iteratively due to body-effect factor.Equating I_M3 with I_M1 yiilds Vbus_low:
Vbus_low=0.63            //Low voltage level of output node in volts(V)
//The resulting voltage drop across M2(0.1volts) yields Vout_low:
Vout_low=0.63+0.1            //Low voltage level of output node in volts(V)

//Results
mprintf("\nHigh voltage level of output node Vout_high: %.1f volts",Vout_high);
mprintf("\nHigh voltage level of bus node Vbus_high: %.1f volts",Vbus_high);
mprintf("\nDrain current in transistor M3 I_M3: %.8f amperes",I_M3);
mprintf("\nLow voltage level of bus node Vbus_low: %.2f volts",Vbus_low);
mprintf("\nLow voltage level of output node Vout_low: %.2f volts",Vout_low);

//Outputs
//High voltage level of output node Vout_high: 5.0 volts
//High voltage level of bus node Vbus_high: 1.3 volts
//Drain current in transistor M3 I_M3: 0.00009800 amperes (or) 98µA
//Low voltage level of bus node Vbus_low: 0.63 volts
//Low voltage level of output node Vout_low: 0.73 volts


