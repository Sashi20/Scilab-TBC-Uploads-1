//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 6.5
//Finding the Allowable Limit of the Dc Input Source.

clc;
clear;
Vs=220;                //Input voltage in volts.
del_a=30;              //Width of each pulse in degree.
p=5;                   //Number of pulses per half cycle.
Vo=Vs*sqrt(p*(del_a/180));//Calculating the rms voltage of the load.
Vs1=Vs*(110/100);
del_b=((Vo/Vs1)^2)*(180/p);//Calculating the pulse width if supply voltage increased by 10 percentage.
del_c=35;                  //Width of each pulse in degree.
Vs2=Vo/sqrt(p*(del_c/180));//Calculating the supply voltage if the pulse width is 35 degrees
printf("\n\t(a).The rms voltage of the load Vo is %0.1fV",Vo);
printf("\n\t(b).The pulse width to maintain the same load power if supply is increased by 10percent del_ is %0.2f degree",del_b);
printf("\n\t(c).The dc supply voltage to maintain pulse width at 35 degree, Vs is %0.2fV",Vs2);
//Answers are changed due to round-off error.
