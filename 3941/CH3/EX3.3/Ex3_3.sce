//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 3.3
//Finding the performance parameters of a full-Wave rectifier with an RL load.

clc;
clear;
L=6.5;                //Inductance in milli Henry.
R=2.5;                //Resistance in Ohm.
E=10;                 //The voltage of the battery in volts.
Vs=120;               //Supply voltage in volts.
f=60;                 //Frequency in Hertz.
//Calculating Diode parameters.
IS=(2.2*E)-(15);BV=1800;
w=2*%pi*f;
Z=((R^2)+((w*(L*10^-3))^2))^0.5;
theta=atan((w*(L*10^-3))/(R));
printf("\n\ttheta = %0.2f degree",theta*180/%pi);
printf("\n\tw = %0.0frad/sec",w);
printf("\n\tZ = %0.1fOhm",Z);
//Calculating the load current.
a1=(R/(L*10^-3))*(%pi/(w));a5=(sqrt(2)*Vs)/(Z);
a2=1-(exp(-a1));a3=1+(exp(-a1));a4=a3/a2;
I0=(a5*sin(theta)*a4)-(E/R);
//Calculating the average diode current.
funcprot(0)
function a=f(wt)
    a=(a5*(sin(wt-theta)+((2/a2)*sin(theta)*(exp(-((R/(L*w*10^-3))*wt))))))-(E/R)
endfunction
a=0;b=%pi;
b1=intg(a,b,f);
ID_av=(1/(2*%pi))*b1;
//Calculating the rms diode current.
funcprot(0)
function b=f(wt)
    b=((a5*(sin(wt-theta)+((2/a2)*sin(theta)*(exp(-((R/(L*w*10^-3))*wt))))))-(E/R))^2
endfunction
c1=intg(a,b,f);
ID_rms=sqrt((1/(2*%pi))*c1);
I0_rms=sqrt(2)*ID_rms;               //Calculating rms output voltage.
Pac=I0_rms^2*R;                      //Calculating ac load power.
PF=Pac/(Vs*I0_rms);                  //Calculating input power factor.
printf("\n\tThe steady state current at wt = 0,I0 is %0.1fA",I0);
printf("\n\tThe average diode current ID(avg) is %0.2fA",ID_av);
printf("\n\tThe rms diode current ID(rms) is %0.1fA",ID_rms);
printf("\n\tThe rms output power I0(rms) is %0.1fA",I0_rms);
printf("\n\tThe ac load power Pac is %0.2fKW",Pac*10^-3);
printf("\n\tThe input power factor is %0.2f(lagging)",PF);
