//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 13.7
//Designing a Dc Inductor.

clc;
clear;
L=450;                     //Inductance in micro henry.
IL=7.2;                    //Inductor current in ampere.
del_I=1;                      //Ripple inductor current in ampere.
Ku=0.4;                    //Window factor.
Im=IL+del_I;                  //Calculating peak inductor current.
Wt=(L*10^-6*Im^2)/2;       //Calculating inductor energy.
Kj=403;x=-0.12;Bm=0.3;     //Maagnetic constant for power core.
Ap=((2*Wt*10^4)/(Bm*Ku*Kj))^(1/(1+x));//Calculating area product.
Wi=1.131;                  //Core weight in kg.
Ac=1.32;                   //Core area in cm^2.
lc=11.62;                  //magnetic path length in cm.
lmt=6.66;                  //Mean length of a turn in cm.
J=Kj*Ap^x;
ur=(Bm*lc*10^5)/(4*%pi*(Ap/Ac)*J*Ku); //Calculating the relative permiability.
Lc=86;                     //Core inductance in milli Henry.
Nc=1000;                   //Number of turns of the coil.
N=Nc*sqrt((L*10^-6)/(Lc*10^-3));      //Calculating the no of turns.
Aw=Im/J;                              //Calculating bare-wire cross sectional area.
den=82.8;                               //Current density in micro ohm per cm.
R=lmt*N*den*10^-6;                      //Calculating the windiding resistance.
Pcu=IL^2*R;                           //Calculating copper loss.
lg=(((4*%pi*10^-7*Ac*N^2)/(L*10^-6))-(lc/ur))*10^-2;//Calculating the air gap length.
printf("\n\tThe peak inductor current Im is %0.1fA",Im);
printf("\n\tThe inductor energy Wt is %0.0fmJ",Wt*10^3);
printf("\n\tFrom the table 13.1, for power core the magnetic constants are,");
printf("\n\tKj=%0.0f\n\tx=%0.2f\n\tBm=%0.1f",Kj,x,Bm);
printf("\n\tThe Area product Ap is %0.2fcm^4",Ap);
printf("\n\tThe core weight Wt is %0.3fkg",Wi);
printf("\n\tThe core area Ac is %0.2fcm^2",Ac);
printf("\n\tThe magnetic path length lc is %0.2fcm",lc);
printf("\n\tThe mean length of a turn lmt is %0.2fcm",lmt);
printf("\n\tThe relative permitivity ur is %0.1f",ur);
printf("\n\tTht material with ur>36.3 is MPP-330T,which gives");
printf("\n\tLc=%0.0fmH\n\tNc=%0.0fturns",Lc,Nc);
printf("\n\tThe number required turns N is %0.0f",N);
printf("\n\tThe bare wire cross sectional area Aw is %0.3fcm^2",Aw);
printf("\n\tThe winding resistance R is %0.2f Ohm",R);
printf("\n\tThe copper loss Pcu is %0.1fW",Pcu);
printf("\n\tThe air gap length lg is %0.2fcm",lg);
