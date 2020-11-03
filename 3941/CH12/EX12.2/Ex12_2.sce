 //Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 12.2
//Finding the Series Compensating Reactance and the Delay Angle of TCSC

clc;
clear;
V=220;                  //Supply voltage in volts.
f=60;                   //Frequency in Hz.
X=12;                   //Reactance in Ohm
Pp=56;                  //Power in Killo watt.
del=80;                   //Delay angle in degree.
C=20;                   //Capacitance in micro farad.
L=0.4;                 //Inductance in milli Henry.
w=2*%pi*f;             //Calculating frequency in rad per second.
Xc=-1/(w*C*10^-6);     //Calculating capacitive reactance.
XL=w*L*10^-3;          //Calculating incductive reactance.
r=1-(((V^2)/(X*Pp*10^3))*sind(del));//Calculating degree of compensarion from Eq 12.25.
X_comp=r*X;             //Calculating compensating capacitance reactance.
I=((2*V)/((1-r)*X))*(sind(del/2));       //Calculating line current from Eq 12.24.
Qc=((2*V^2)/X)*(r/(1-r)^2)*(1-cos(del));//Calculating reactive power from Eq 12.26.
//Calculating the eqution to find delay angle from Eq 12.27b.
function a=f(alp)
    a=((Xc*(XL*((%pi)/(%pi-(2*alp)-sin(2*alp)))))/((XL*((%pi)/(%pi-(2*alp)-sin(2*alp))))-Xc))+50
endfunction
alp=fsolve(1.5,f)//Solving the Eq 12.27b to find the delay angle alpha.
printf("\n\tw=%irad/sec\n\tXc=%0.2f Ohm\n\tXL=%0.3f Ohm",w,Xc,XL);
printf("\n\t(a).The degree of compensation r is %0.3f",r);
printf("\n\t(b).The compensating capacitive reactance Xcomp is %0.1f Ohm",X_comp);
printf("\n\t(c).The line current I is %0.2fA",I);
printf("\n\t(d).The reactive power Qc is %0.3e",Qc);
printf("\n\t(e).The delay angle alp is %0.2f degree",alp*180/%pi);
//Some anwers are changed due to round off error.
