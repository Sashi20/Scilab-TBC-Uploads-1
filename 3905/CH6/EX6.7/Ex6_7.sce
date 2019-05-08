//Example 6.7, Page Number 372
//Current-Starved Inverter
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
Vgs=5                     //Gate-Source voltage in volts(V)
beta_depletion=19.6*(10^-6)               //ß=19.6*(10^-6) for Depletion FET in Area per Voltage square(A/V**2)
lamda=0.2                         //Channel modulation constant in volt inverse(1/V)
Vp=0.74                        //Pinch-Off voltage in volts(V)
Weff1=1.8                                //Effective depletion region width
Leff=0.9                                //Effective depletion region length
Weff2=9                                //Effective depletion region width

//Outputs
//Maximum current of minimum-size inverter is given by below relation:
Isat=0.5*(Weff1/Leff)*beta_depletion*((Vgs-Vp)^2)   //Saturation current in amperes(A)
//Maximum current of minimum-size control transistor M3 is given by below relation:
Vcontr=sqrt((Isat/(0.5*(Weff2/Leff)*beta_depletion)))-Vp      //Control voltage of transistor M3 in volts(V)

//Results
mprintf("\nSaturation current: %.7f amperes",Isat);
mprintf("\ncontrol voltage: %.2f volts",Vcontr);

//Outputs
//Saturation current: 0.0003556929600 amperes (or) 355.7µA
//control voltage: 1.17 volts


