//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 16.6
//Determining the Speed and the Turbine Speed and the Gear Ratio.

clc;
clear;
Ng=870;                      //Generated speed in rpm.
va=6;                        //Wind speed in m/sec.
TSR=8;                       //Speed ratio of the turbine.
d=12;                        //Sweep diameter of turbine in meter.
r=d/2;                       //Calculating the radius of the blade.
v_tip=TSR*va;                //Calculating the tip speed.
Nt=(v_tip/(2*%pi*r))*60;     //Calculating lower speed of the gear.
GRt=Ng/Nt;                   //Calculating the gear ratio
printf("\n\t(a).The tip speed Vtip is %0.0fm/s",v_tip);
printf("\n\t    The low speed of the gear Nt is %0.2frpm",Nt);
printf("\n\t(b).The gear ratio GRt is %0.2f",GRt);
