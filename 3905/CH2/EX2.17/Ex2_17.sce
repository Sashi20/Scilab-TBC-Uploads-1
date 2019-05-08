//Example 2.17, Page Number 85
//MOS Transistor Process Variations 
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
Vgs=5     // Gate source voltage in volts(V)
Vds=5     //Drain source voltage in volts(V)
W=1.8*(10^-6)   //Channel width in metres(m)
L=0.9*(10^-6)    //Effective channel length in metres(m)
Kn=19.6*(10^-6)    //Device parameter in A/V^2
Vt=0.75            //Threshold voltage in volts(V)

//Outputs
Id=(Kn/2)*(W/L)*((Vgs-Vt)^2)       //Nominal diode current in amperes(A)

//The above parameters are subject to process variation.So,considering the following conditions:1)10% variation in Kn´ 2) 25% variation in Vt 3) Distribution of W and L has value 0.15µm  4) Variation of 0.5V in supply 

Id_max=(((Kn+(0.1*Kn))/2)*((W+(0.15*(10^-6)))/(L-(0.15*(10^-6))))*((Vgs+0.5)-(Vt-(0.25*Vt)))^2)      //Maximum nominal diode current in amperes(A)
Id_min=(((Kn-(0.1*Kn))/2)*((W-(0.15*(10^-6)))/(L+(0.15*(10^-6))))*((Vgs-0.5)-(Vt+(0.25*Vt)))^2)     //Minimum nominal diode current in amperes(A)

//Results
mprintf("\nNominal diode current is Id: %.7f amperes",Id);
mprintf("\nMaximum nominal diode current is Id_max: %.7f amperes",Id_max);
mprintf("\nMinimum nominal diode current is Id_min: %.7f amperes",Id_min);

//Outputs
//Nominal diode current is Id: 0.0003540 amperes (or) 354.0 µA
//Maximum nominal diode current is Id_max: 0.0006832 amperes (or) 683.2 µA
//Minimum nominal diode current is Id_min: 0.0001759 amperes (or) 175.9 µA
