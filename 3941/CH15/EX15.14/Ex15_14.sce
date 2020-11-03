//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 15.14
//Finding the Developed Power by the Linear Inductor Motor.

clc;
clear;
Lamda=0.5;                     //Pole pitch of motor in metre.
f=60;                          //Supply frequency in Hz.
v=210;                         //Speed of primary side in Km/h.
Fa=120;                        //Thrust developed in motor in kN.
vm=v*10^3/3600;                //Calculating motor speed.
Pd=Fa*10^3*vm;                 //Calculating the developed power.
vs=2*Lamda*f;                  //Calculating the synchronous speed.
s=(vs-vm)/vm;                  //Calculating the slip in speed.
Pcu=Fa*10^3*s*vs;              //Calculating the copper loss.
printf("\n\t(a).The motor speed vm is %0.3fm/s",vm);
printf("\n\t(b).The developed power Pd is %0.0fMW",Pd*10^-6);
printf("\n\t(c).The synchronous speed vs is %0.0fm/s",vs);
printf("\n\t(d).The slip s is %0.3f",s);
printf("\n\tThe copper loss Pcu is %0.0fkW",Pcu*10^-3);
//Some answers are changed due to roundoff error.
