//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 16.10
//Determining the Maximum Power of a Fuel Cell.

clc;
clear;
//Calculating the current.
function a=f(t)
    a=0.75-(0.125*tan(t-1.2))-(0.125*t*(1/(cos(t-1.2))^2))
endfunction
t0=2;
Imp=fsolve(t0,f);
Vmp=0.75-(0.125*tan(Imp-1.2));//Calculating the voltage
Pmax=Vmp*Imp;                  //Calculating maximum power.
printf("\n\tThe current of the cell Imp is %0.2fA",Imp);
printf("\n\tThe voltage of the cell Vmp is %0.4fV",Vmp);
printf("\n\tThe maximum power of the cell Pmax is %0.3fW",Pmax);
