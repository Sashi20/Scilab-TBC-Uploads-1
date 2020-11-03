//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 15.13
//Finding the Speed Control Parameters of a PMSM Drive System.

clc;
clear;
VL=220;                    //Rated voltage in volts.
f=60;                      //Frequency in Hz.
p=6;                       //Number of poles of the motor.
Rs=1.2;                    //Stator resistance in Ohm.
Ld=5;                      //Inductance in milli Henry.
Lq=8.4;                    //Inductance in milli Henry.
psi_r=0.14;                   //Rotor flux linkage in Wb-turns.
BT=0.01;                   //Torque in N.mn/rad/s.
J=0.006;                   //Work done by the motor in kg-m^2.
fc=2.5;                    //Converter frequency in kHz.
Vcm=10;                    //Commutator voltage in volts.
Hw=0.05;                   //Feedback of speed controller in V/A.
Hc=0.8;                    //Feebback of current controller in V/A.
Vdc=200;                   //Dc output voltage in volts.
Vph=VL/sqrt(3);            //Calculating the phase voltage.
Kin=0.65*Vdc/Vcm;          //Calculating inverter gain.
Tin=1/(2*fc*10^3);        //Calculating time constant.
s=poly(0,"s");
Gr_s=Kin/(1+s*Tin);        //Calculating inverter transfer function.
Ka=1/Rs;                   //Calculating motor electrincal gain.
Ta=Lq*10^-3/Rs;            //Calculating motor time constant.
Ga_s=Ka/(1+s*Ta);          //Calculating the motor transfer function.
KT=(3/2)*(p/2)^2*psi_r;        //Calculating torque constant of induced emf.
Km=1/BT;                   //Calculating mechanical gain.
Tm=J/BT;                   //Calculating mechanical time constant.
Kb=KT*Km*psi_r;               //Calculating emf feedback constant.
Gb_s=Kb/(1+s*Tm);          //Calculating emf feedback transfer function.
Gm_s=(KT*Km)/(1+s*Tm);     //Calculating motor mechanical transfer function.
//Calculating electrical time constants.
a=Tm*(Ta+Tin);
b=Tm+(Ka*Kin*Tm*Hc);
c=Ka*Kb;
T=a*s^2-b*s+c;T11=roots(T)
T1=1/T11(1,1);T2=1/T11(2,1);
Tt=T1;                     //Calculating current-loop time constant.
Ki=(Tm*Kin)/(T2*Kb);       //Calculating current-loop gain.
Gts_s=Ki/(1+s*Tt);         //Calculating crrent-loop transfer function.
Kg=(Ki*Km*KT*Hw)/Tm;       //Calculating speed controller constant.
Tw=0.002;                  //The time constant in sec.
Twi=Tw+Tt;                 //Calculating time constant.
Ts=6*Twi;                  //Calculating time constant.
Ks=4/(9*Kg*Twi);           //Calculating gain constant,
Gs_s=(Ks/Ts)*((1+Ts*s)/s); //Calculating speed-loop transfer function.
Gw_s=Hw/(1+s*Tw);          //Calculating speed-loop transfer function.
printf("\nInverter gain Ktm is %0.0fV/V",Kin);
printf("\nTime  constant Tin is %0.1fms",Tin*10^3);
disp(Gr_s,"The inverter transfer function Gr(s) is ");
printf("\nMotor electricl gain Ka is %0.4fs",Ka);
printf("\nMotor time constant Ta is %0.3fs",Ta);
disp(Ga_s,"The motor transfer function Ga(s) is");
printf("\nTorque constant of induced emf loop is %0.2fN.m/A",KT);
printf("\nMechanical gain Km is %0.0frad/s/N.m",Km);
printf("\nMechanical time constant Tm is %0.1fs",Tm);
printf("\nEmf feedback constant Kb is %0.2f",Kb);
disp(Gb_s,"The emf feedback transfer function Gb(s) is ");
disp(Gm_s,"The motor mechanical transfer function Gm(s) is");
disp(T,"Electrical time constant of motor can be solved from roots of following equation");
printf("The elctrical time constants are \nT1 = %0.4fms\nT2 = %0.4fms",T1*10^3,T2*10^3);
printf("\nThe current-loop time constant Tt is %0.4fms",Tt*10^3);
printf("\nThe curret-loop gain Ki is %0.5f",Ki);
disp(Gts_s,"The current-loop transfer functio Gts(s) is ");
printf("\nThe speed controller constant Kg is %0.5f",Kg);
printf("\nThe time constant Twi is %0.4fms",Twi*10^3);
printf("\nThe time constant Ts is %0.2fms",Ts*10^3);
printf("\nThe gain constant Ks is %0.4f",Ks);
disp(Gs_s,"The speed loop transfer function Gs(s) is");
disp(Gw_s,"The speed loop transfer function Gw(s) is");
//Some answers may change due to round-off error.
