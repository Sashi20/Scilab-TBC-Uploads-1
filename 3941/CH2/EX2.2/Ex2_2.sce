//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 2.2
//Finding the reverse recovery Current

clc;
clear;
trr=3;              //Reverse recovery time of the diode in micro second.
di_by_dt=30;        //The rate of fall of diode current in A/micro second.
QRR=(0.5*di_by_dt*10^6*((trr*10^-6)^2))*10^6;       //Calculating Storage charge QRR;
IRR=sqrt(2*QRR*10^-6*di_by_dt*10^6);          //Calculating reverse recovery current IRR.
printf("\n\tThe storage charge QRR is %iμC",QRR);
printf("\n\tThe Peak Reverse current IRR is %iA",IRR);
