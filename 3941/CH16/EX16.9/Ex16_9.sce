//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 16.9
//Determining the Output Voltage of a PAFC.

clc;
clear;
q=1.602*10^-19;          //Charge of one electon.
NA=0.6002*10^24;         //Avagadro's number.
GH=237.13*10^3;          //Gibbs free energy constant.
Nm=100;                  //Number of moles of hydrogen.
qe=NA*q;                 //Calculating the amount of charge in mol of electron
Ne=2*NA;                 //Calculating no fo electronics for 1 mol of H2.
qm=Ne*q;                 //Calculating total charge of ekectron in 1mol of H2.
Vc=GH/qm;                //Calculating output voltage of a single FC.
Vo=Nm*Vc;                //Calculating the total output voltage.
printf("\n\tThe amount of charge in mol of electrons qe is %0.3eC",qe);
printf("\n\tThe number of electronics for 1 mol of H2 Ne is %0.1e",Ne);
printf("\n\tThe total charge of electrons in 1 mol of H2 qm is %0.3eC",qm);
printf("\n\tThe output voltage of a single FC, Vc is %0.3fV",Vc);
printf("\n\tThe output voltage Vo is %0.1fV",Vo);
