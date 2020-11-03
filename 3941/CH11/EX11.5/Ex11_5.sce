//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 11.5
//Finding the Performance Parameters of a Single-Phase Connection Changer.

clc;
clear;
V=240;                        //Primary rms voltage in volts.
f=60;                         //Primary frequency in Hz.
V1=120;V2=120;                //The secondary voltages in volts.
R=10;                         //Resistance in Ohm.
V0=180;                       //RMS load voltage in volts.
s=98;                         //Delay angle in degree.
//Calculating the equation for delay angle alp from the reference Eq 11.30.
function a=f(b)
    a=(sqrt(((V1^2/%pi)*(b-((sin(2*b))/2)))+((((V1+V2)^2/%pi)*(%pi-b+((sin(2*b))/2))))))-V0
endfunction
alpha=fsolve(0.1,f)        //Solving the Eq 11.30 to find the value of alpha.
IR1=((V1+V2)/(sqrt(2)*R))*sqrt((1/%pi)*(%pi-alpha+(sin(2*alpha)/2)));//Calculating the rms current of thyristors T1 and T2.
IR3=(V1/(sqrt(2)*R))*sqrt((1/%pi)*(alpha-(sin(2*alpha)/2)));     // Calculating the rms current of thyristor T3 and T4.
I2=sqrt(2)*IR1;                //Calculating the rms current of secondary winding.
I1=sqrt((sqrt(2)*IR1)^2+(sqrt(2)*IR3)^2);//Calculating the total rms current.
VA=(V1*I1)+(V2*I2);                      //Calculating the VA rating.
Po=V0^2/R;                               //Calculating the output power.
PF=Po/VA;                                //Calculating the power factor.
printf("\n\t(a).The delay angle alp is %0.0f degree",alpha*180/%pi);
printf("\n\t(b).The rms current of thyristor T1 and T2 IR1 is %0.1fA",IR1);
printf("\n\t    The rms current of thyristor T3 and T4 IR3 is %0.1fA",IR3);
printf("\n\t(c).The rms current of secondary winding I2 is %0.1fA",I2);
printf("\n\t    The total rms current I1 is %0.2fA",I1);
printf("\n\t    The VA rating of primary and secondary VA is %0.1f",VA);//Book answer is wrong.
printf("\n\t    The output power Po is %0.0fW",Po);
printf("\n\t    The power factor PF is %0.4f(lagging)",PF);//Book answer is wrong.
//Some answers are changed due to round off error.
