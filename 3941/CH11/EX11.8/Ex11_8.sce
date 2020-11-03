//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 11.8
//Finding the Device Ratings of the Single-Phase Full-Wave Controller.

clc;
clear;
Vs=230;                      //Supply voltage in volts.
f=60;                        //Supply frequency in Hz.
Po=10;                       //Output power in killo watts.
Vm=sqrt(2)*Vs;               //Calculating phase voltage.
Vo=Vs;                       //Calculating the output voltage.
R=Vo^2/(Po*10^3);            //Calculating load resistance.
Iom=Vo/R;                    //Calculating maximum rms value of load current.
Irm=Iom/sqrt(2);             //Calculating maximum rms value of thyristor current.
Iam=(sqrt(2)*Vo)/(%pi*R);    //Calculating maximum average current of thyristor.
Ip=Vm/R;                     //Calculating peak thristor current.
Vp=Vm;                       //Calculating peak thyristor voltage.
printf("\n\t    The Resistnace R is %0.2fΩ",R)
printf("\n\t(a).The maximum value of rms load current Iom is %0.2fA",Iom);
printf("\n\t    The maximum value of rms thyristor current Irm is %0.2fA",Irm);
printf("\n\t(b).The maximum average current of thyristor Iam is %0.2fA",Iam);
printf("\n\t(c).The peak thyristor current Ip is %0.1fA",Ip);
printf("\n\t(d).The peak thyristor voltage Vp is %0.1fV",Vm);
