//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 17.6
//Selecting a Fast-Acting Fuse for Protecting a Thyristor.

clc;
clear;
Vs=240;                  //Input voltage in volts.
f=60;                    //Frequency in  Hz.
Ia=400;                  //Average thyristor current in ampere.
IT_av=540;               //Rated average current of thyristor in ampere.
IT_rms=850;              //Rated rms current of thyristor in ampere.
P=300;                   //Power rating of thyristor at kA^2s.
t=8.33;                  //Operating tine of thyristor in milli second.
it=4650;                 //R
Itsm=10;                 //
I=540;                   //Current rating of fuse in ampere.
Imax=8500;               //Maximum fuse current in ampere.
Pt=280;                  //Power rating of fuse in KA^2.
tc=8;                    //Total clearing time in milli second.
L=0.07;                  //Inductance in milli Henry.
Isc=Vs/(2*%pi*f*L*10^-3);//Calculating the short circuit current.
printf("\n\tThe short circuit current Isc is %0.0fA",Isc);
//Some answeres are changed due to round off error.
