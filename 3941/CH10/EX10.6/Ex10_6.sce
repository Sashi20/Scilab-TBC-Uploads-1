//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 10.6
//Finding the Current Ratings of Three-Phase Full-Converter with an RL Load.

clc;
clear;
L=1.5;                         //Load inductance in milli Henry.
R=2.5;                         //Load resistance in Ohm.
E=10;                          //Battery voltage in Volts.
Vab=208;                       //Line to line input voltage.
f=60;                          //Supply frequency in Hz.
alp=%pi/3;                       //Delay angle in radians.
w=2*%pi*f;                     //Calculating the resonant frequency.
Z=sqrt(R^2+(w*L*10^-3)^2);     //Calculating the load impedence.
theta=atan((w*L*10^-3)/R);        //Calculating the load angle.
//Calculating the steady state load current from the Eq.10.21.
IL1=(((sqrt(2)*Vab)/Z)*(((sin(((2*%pi)/3)+alp-theta))-((sin((%pi/3)+alp-theta))*(exp(-((R/(L*10^-3))*(%pi/(3*w)))))))/(1-(exp(-((R/(L*10^-3))*(%pi/(3*w))))))))-(E/R);
//Calculating the equation of average thyristor current from Eq.10.20
funcprot(0)
function a=f(wt)
    a=(((sqrt(2)*Vab)/Z)*sin(wt-theta))-(E/R)+(((IL1)+(E/R)-(((sqrt(2)*Vab)/Z)*(sin((%pi/3)+alp-theta))))*(exp((R/(L*10^-3))*((((%pi/3)+alp)/w)-(wt/w)))))
endfunction
a=(%pi/3)+alp;b=((2*%pi)/3)+alp;//Limits for integrating average thyristor current
IA=(1/(%pi))*(intg(a,b,f));     //Calculating average tyristor current
//Calculating the equation of  rms thyristor current from the Eq 10.20.
funcprot(0)
function b=f(wt)
    b=((((sqrt(2)*Vab)/Z)*sin(wt-theta))-(E/R)+(((IL1)+(E/R)-(((sqrt(2)*Vab)/Z)*(sin((%pi/3)+alp-theta))))*(exp((R/(L*10^-3))*((((%pi/3)+alp)/w)-(wt/w))))))^2
endfunction
IR=sqrt((1/%pi)*(intg(a,b,f)));   //Calculating rms thyristor current.
Irms=sqrt(3)*IR;                  //Calculating rms output current.
Idc=3*IA;                         //Calculating average output current.
printf("\n\t(a).The steady state load current IL1 is %0.2fA",IL1);
printf("\n\t(b).The average thyristor current IA is %0.1fA",IA);
printf("\n\t(c).The rms thyristor current IR is %0.2fA",IR);
printf("\n\t(d).The rms output current Irms is %0.2fA",Irms);
printf("\n\t(e).The average output current Idc is %0.2fA",Idc);
//Some answers are varied due to round--off error.
