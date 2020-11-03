//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 17.2
//Calculating the Parameters of the Thermal Equivalent Circuit.
  
clc;
clear;
d_foil=0.3;                     //Tickness of the foil in mm.
Rth_kk=25;                      //Thermal resistance of the heat sink in K/W.
msk=2;                          //Mass of heat sink in gram.
Ask=1;                          //Surface are of TO-220 package in cm^2;
Acu=10;                         //Surface area of device chip in mm^2.
mcu=1;                          //Amount of copper around  pyramind stunp in g
dcu=0.8;                        //Thickness of copper in mm.
csk=0.95;                       //Specific heat of aluminium material in J/gK.
Cth_kk=csk*msk;                 //Calculating capacitance of heat sink.
Lamda_th_foil=1.1;                   //Area constant of alminium in W/mk.
Lamda_th=390;                        //Area constant of copper in W/mk.
Rth_foil=(d_foil*10^-3)/(Lamda_th_foil*Ask*10^-4); //Calculating thermal resistance of foil.
Ccu=0.39;                       //Capcitance constant of copper in J/gk.
Cth7=Ccu*mcu;                   //Calculating thermal capacitance of chip.
Rth7=(dcu*10^-3)/(Lamda_th*Acu*10^-6);            //Calculating thermal capacitance of chip.
printf("\n\tThe thermal capacitance of the heat sink Cth_kk is %0.1fg",Cth_kk);
printf("\n\tThe thermal resistance of the foil Rth_foil is %0.1fK/W",Rth_foil);
printf("\n\tThe thermal capacitance of the chip Cth7 is %0.2fJ/K",Cth7);
printf("\n\tThe thermal resistance of the chip is %0.3fK/W",Rth7);
