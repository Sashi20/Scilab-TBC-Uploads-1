//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 9.3
//Finding the Voltage Sharing of Series-Connected Thyristors.

clc;
clear;
Vs=15;                             //Supply voltage in kilo volts.
del_Id=10;                            //Maximum leakage current in milli Ampere.
del_Q=150;                            ///Recovery charge difference in micro coloumb.
R=56;                              //Resistance in killo Ohm.
C1=0.5;                            //Capacitance in micro Farad.
ns=10;                             //No of thyristors in the string.
Vds_max=((Vs*10^3)+((ns-1)*R*10^3*del_Id*10^-3))/ns;//Calculating the maximum steady state voltage sharing.
DRF=1-((Vs*10^3)/(ns*Vds_max));                  //Calculating steady state derating factor.
Vdt_max=((Vs*10^3)+(((ns-1)*del_Q*10^-6)/(C1*10^-6)))/ns;//Calculating maximum transient voltage sharing.
DRF1=1-((Vs*10^3)/(ns*Vdt_max));                      //Calculating transient derating factor
printf("\n\t(a).The maximum steady state voltage sharing Vde(max) is %0.0fV",Vds_max);
printf("\n\t(b).The steady state derating factor is DRF is %0.2fpercent",DRF*100);
printf("\n\t(c).The maximum transient voltage sharing Vdt(max) is %0.0fV",Vdt_max);
printf("\n\t(d).The transient derating factor is DRF is %0.2fpercent",DRF1*100);
