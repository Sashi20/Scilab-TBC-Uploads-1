//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 14.2
//Determining the Effects of Gear Ratio on the Effective Motor Torque and Inertia

clc;
clear;
B1=0.025;                      //Load side friction coefficient in Nm/rad/sec.
w1=210;                        //Motor Resonant frequency in rad/sec.
Bm=0.045;                      //Motor side friction coefficient in kg-m^2.
Jm=0.32;                       //Motor side inertia in kg-m^2.
J1=0.25;                       //Load side inertia in kg-m^2.
T2=20;                         //Load torque 
w2=21;                         //Load resonant frequency in rad/sec.
GR=w1/w2;                      //Calculating gear ratio.
T1=T2/GR^2;                    //Calculating effective motor torque.
J=Jm+(J1/GR^2);                //Calculating effective inertia.
B=Bm+(B1/GR^2);                //Calculating effective friction coefficient.
printf("\n\t(a).The gear ratio GR is %0.0f",GR);
printf("\n\t(b).The effective motor torque T1 is %0.1fNm",T1);
printf("\n\t(c).The effective inertia J is %0.3fKg-m^2",J);
printf("\n\t(d).The effective friction coefficient B is %0.3fNm/rad/sec",B);
