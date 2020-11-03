//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 14.5
//Finding the Delay Angle and Feedback Power in Regenerative Braking.

clc;
clear;
Vs=440;                            //Supply voltage in volts.
Eg=-186.82;                        //From part (a) of Example 14.4, the back emf at the time of polarity reversal is Back in Volts.
Ia=45;                             //Armature current in ampere.
Ra=0.25;                           //Armature resistance in Ohm.
Vm=sqrt(2)*Vs;                     //Calculating phase voltage.
Va=Eg+(Ia*Ra);                     //Calculating the armature voltage.
alpha_a=acosd((Va*%pi)/(2*Vm));         //Calculating the delay angle.
Pa=Va*Ia;                          //Calculating the armature power.
printf("\n\t(a).The armature voltage Va is %0.2fV",Va);
printf("\n\t    The delay angle alpa is %0.2f°",alpha_a);
printf("\n\t(b).The power fed back to supply Pa is %0.1fW",Pa);
//Polarity of Pa given in the textbook is wrong.
