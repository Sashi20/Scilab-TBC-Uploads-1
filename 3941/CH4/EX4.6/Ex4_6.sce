//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 4.6
//Finding the Current Sharing by Two Parallel MOSFETs.

clc;
clear;
It=20;                 //Total current through mosfet in amps.
Vds1=2.5;              //Drain to source voltage of mosfet 1 in volts.
Vds2=3;                //Drain to source voltage of mosfet 2 in volts.
Rs11=0.3;Rs12=0.2      //Series resistance in Ohms.
Rs21=0.5               //Series resistance in ohms.
Id11=(Vds2-Vds1+(It*Rs12))/(Rs11+Rs12);//Calculating current through thyristor1.
Id12=It-Id11;                         //Calculating current through thyristor2.
delI1=((Id12-Id11)/It)*100           //Calculating change in current.
Id21=(Vds2-Vds1+(It*Rs21))/(Rs21+Rs21);//Calculating current through thyristor1.
Id22=It-Id21                           //Calculating current through thyristor2.
delI2=((Id21-Id22)/It)*100             //Calculating change in current.
printf("\n(a).Drain current of each thyristor when Rs1=0.3Ω,Rs2=0.2Ω is,");
printf("\n\tId1 = %iA\n\tId2 = %iA\n\tΔI = %i percent",Id11,Id12,delI1);
printf("\n(b).Drain current of each thyristor when Rs1=Rs2=0.5Ω is,");
printf("\n\tId1 = %0.1fA\n\tId2 = %iA\n\tΔI = %i percent",Id21,Id22,delI2);
