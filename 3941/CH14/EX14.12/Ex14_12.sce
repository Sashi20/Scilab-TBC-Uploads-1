//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 14.12
//Finding the Line Harmonic Current of Two Multiphase Dc–dc Converters with an Input Filter

clc;
clear;
Ia=100;                       //Armature current in ampere.
Le=0.3;                       //Inductance in milli Henry.
Ce=4500;                       //Capcitance in micro farad.
f=350;                        //Frequency in Hz.
u=2;                          //Number of converters.
fo=1/(2*%pi*sqrt(Le*10^-3*Ce*10^-6));//Calculating the intial frequency.
fe=2*f;                             //Calculating the efective converter frequency.
k=0.5;                            //Calculating the voltage constant.
I1h=(Ia/%pi)*(sqrt(1-cos(2*%pi*k)));//Calculating fundamental component of current.
I1s=I1h/(1+(2*(f/fo))^2);           //Calculating the fundamental component of harmonic current.
printf("\n\tThe intial frequency fo is %0.2fHz",fo);
printf("\n\tThe effective converter frequency fe is %0.0f",fe);
printf("\n\tThe fundamental component of dc-dc converter current I1h is %0.2fA",I1h);
printf("\n\tThe fundamental component of dc-dc converter generated harmonic current I1s is %0.2fA",I1s);
