//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 13.6
//Design of a Transformer.

clc;
clear;
f=60;                     //Supply frequency in Hz.
V1=120;                   //Transformer primary voltage in volts.
Vo=40;                    //Output voltage in Volts.
Io=6.5;                   //Output current in Ampere.
eff=0.95;                   //Transformer efficiency.
Ku=0.4;                   //Window factor.
Kt=4.44;                  //Sapce factor for square wave.
Po=Vo*Io;                 //Calculating output power.
Pt=(1+(1/eff))*Po;          //Calculating transformer appearent power..
kj=366;x=-0.14;          //Magnetic core costants for E-laminated core.
Bm=1.4;                  //Peak flux density.
Ap=((Pt*10^4)/(Kt*f*Bm*Ku*kj))^(1/(1+x));//Calculating area product.
Wt=3.901;                            //Core weight choosed based on Ap.
Ac=24.4;                             //Core area in cm^2.
Iml=27.7;                            //Mean length of a turn in cm.
Np=(V1*10^4)/(Kt*f*Bm*Ac);           //Calculating primary number of turns.
Ns=(Np*Vo)/(V1);                    //Calculating secondary number of turns.
J=kj*(Ap^x);
I1=(Pt-Po)/V1;                      //Calculating primary current.
Awp=I1/J;                          //Calculating Primary bare wire cross sectional area.
den_p=131.8;                           //Primary current density in micro ohm per cm.
Rp=Iml*Np*den_p*10^-6;                //Calculating primary winding resistance.
Pp=I1^2*Rp;                        //Calculating primary copper loss.
Aws=Io/J;                          //Calculating secondary bare wire cross sectional area.
den_s=41.37;                         //Secondary current density in micro ohm per cm
Rs=Iml*Ns*den_s*10^-6;               //Calculating secondary winding resistance.
Ps=Io^2*Rs;                       //Calculating secondary copper loss.
Pfe=(0.557*10^-3)*(f^1.68)*(Bm*1.86);   //Calculating transformer core loss.
eff=Po/(Po+Pp+Ps+Pfe);              //Calculating transformer efficiency.
printf("\n\tThe output power Po is %0.0fW",Po);
printf("\n\tThe transformer apparent power Pt is %0.1fW",Pt);
printf("\n\tFrom table 13.1, for E-laminated core,Magnetic core constants are");
printf("\n\tKj=%0.0f\n\tx=%0.2f\n\tBm=%0.1f",kj,x,Bm);
printf("\n\tThe area product Ap is %0.1fcm^4",Ap);
printf("\n\tChoose E-core type ");
printf("\n\tThe core weight Wt is %0.3fkg",Wt);
printf("\n\tThe core area Ac is %0.1fcm^2",Ac);
printf("\n\tThe mean core length Iml is %0.1fcm",Iml);
printf("\n\tThe primary number of turns Np is %0.0f",Np);
printf("\n\tThe secondary number of turns Ns is %0.0f",Ns);
printf("\n\tThe primary current I1 is %0.2fA",I1);
printf("\n\tThe primary bare wire cross sectional area Awp is %0.3fcm^2",Awp);
printf("\n\tThe primary winding resistance Rp is %0.2f Ohm",Rp);
printf("\n\tThe primary copper loss Pp is %0.1fW",Pp);
printf("\n\tThe secondary bare wire cross sectional area Aws is %0.3fcm^2",Aws);
printf("\n\tThe secondary resistance Rs is %0.2f Ohm",Rs);
printf("\n\tThe secondary copper loss Ps is %0.1fW",Ps);
printf("\n\tThe transformer copper loss Pfe is %0.2fW",Pfe);//Book answer is wrong
printf("\n\tThe transformer effeciency eff is %0.0fpercent",eff*100);//Book answer is wrong
