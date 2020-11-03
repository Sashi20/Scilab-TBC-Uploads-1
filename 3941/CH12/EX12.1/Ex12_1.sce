//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 12.1
//Finding the Inductive Reactance and the Delay Angle of TCR.

clc;
clear;
V=220;                    //Supply voltage in volts.
f1=60;                     //Frequency in Hz.
Pp=56;                    //Power in kilo Wats.
IL_max=100;               //Maximum load current in ampere.
w=2*%pi*f1;                //Calpculating frequency in rad/sec.
k=0.6;X=1.2;
del=2*asind((X*Pp*10^3)/(2*V^2));//Calpculating phase angle.
I=((4*V)/X)*sind(del/4);         //Calpculating linear current.
Qp=((4*V^2)/X)*(1-cosd(del/2));  //Calpculating reactive power of shunt compensator.
IQ=Qp/V;                       //Calpculating current through TCR.
XL=V/(IL_max);                 //Calpculating the inductance.
IL=k*IL_max;                   //Calpcualpating the 60% of load current.
//Calpculating delay angle
function a=f(alp)
    a=(V/XL)*(1-((2/%pi)*alp)-((1/%pi)*sin(2*alp)))-IL
endfunction
a0=18
alp=fsolve(a0,f);
printf("\n\t(a).The phase angle del is %0.2f degree",del);
printf("\n\t(b).The linear current I is %0.1fA",I);
printf("\n\t(c).The reactive power of shunt compensator Qp is %0.1fA",Qp);
printf("\n\t(d).The current through TCR IQ is %0.3fA",IQ);
printf("\n\t(e).The inductance reactance XL is %0.1f Ohm",XL);
printf("\n\t(f).The delay angle alp is %0.2f°",alp*180/%pi)
