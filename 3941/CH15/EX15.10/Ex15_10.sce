//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Verpsion : 6.0.2     ;OS : Windows.
                                                                            
//Example : 15.10
//Finding the Rotor Flux Linkages.

clc;
clear;
HP=6;                         //Rated capacity of the motor in Hp.
f=60;                         //Frequency in Hz.
p=4;                          //Number of poles of the motor.
VL=220;                       //Rated voltage of the motor in volts.
Rs=0.28;                      //Stator repsistance in Ohm.
Rr=0.17;                      //Rotor repsistannce in Ohm.
Lm=61;                        //Magnetzing inductance in milli Henry.
Lr=56;                        //Rotor inductance in milli Henry.
Ls=53;                        //Stator inductance in milli Henry.
J=0.01667;                    //Work done by the motor in Kg-m^2.
N=1800;                       //Rated spedd of the motor in rpm.
Po=745.7*HP;                  //Calculating capacity of motor in watts.
w=2*%pi*f;                    //Calculating frequency in rad/sec.
wm=(2*%pi*N)/60;              //Calculating motor speed in rad/sec.
wr=(p/2)*wm;                  //Calculating the rotor speed.
wc_max=wr;                    //Calculating maximum rotor speed.
Vqs=(sqrt(2)*VL)/sqrt(3)      //Calculating the stator voltage
Vds=0;ws1=0;                  //Calculating the stator voltage.
//Calculating the stator curret;
B=[Rs w*Ls*10^-3 0 w*Lm*10^-3; 
-w*Ls*10^-3 Rs -w*Lm*10^-3 0;
0 ws1*Lm*10^-3 Rr ws1*Lr*10^-3;
-ws1*Lm*10^-3 0 -ws1*Lr*10^-3 Rr];
X=[Vqs; Vds; 0; 0;];
A=inv(B)*X;
iqs=A(1,1);ids=A(2,1);iqr=A(3,1);idr=A(4,1);
//Calculating the stator flux linkages;
psi_qs=(Ls*10^-3*iqs)+(Lm*10^-3*iqr);
psi_ds=(Ls*10^-3*ids)+(Lm*10^-3*idr);
psi_s=sqrt(psi_qs^2+psi_ds^2);
//Calculating the rotor flux linkages;
psi_Qr=(Lr*10^-3*iqr)+(Lm*10^-3*iqs);//Answer given in the book is wrong.
psi_dr=(Lr*10^-3*idr)+(Lm*10^-3*ids);
psi_r=sqrt(psi_Qr^2+psi_dr^2);
//Calculating the magnetizing flux linkages;
psi_mq=(Lm*10^-3)*(iqs+iqr);
psi_md=(Lm*10^-3)*(ids+idr);
psi_m=sqrt(psi_mq^2+psi_md^2);
If=sqrt(ids^2+iqs^2);          //Calculating flux producing stator current.
Td=(3*p/4)*((psi_ds*iqs)-(psi_ds*ids));//Calculating the developed torque.
Td1=(3*p/4)*(((Lm*10^-3)^2*ids*iqs)/(Lr*10^-3));//Calculating developed torque.
Te=Po/wm;                                     //Calculating the torque for output power.
Ke=(3*p/4)*(Lm/Lr);                          //Calculating torque constant.
Ir=Te/(Ke*psi_r);                               //Calculating rotor current.
Is=sqrt(If^2+Ir^2);                          //Calculating stator current.
theta_T=atand(Is/If);                              //Calculating the torque angle.
ws1=(Rr/(Lr*10^-3))*(Is/If);                   //Calculating the slip speed.
Ks1=(Lm*10^-3*Rr)/(psi_r*Lr*10^-3);             //Calculating slip gain.
printf("\n\t(a).Ths stator currents are");
printf("\n\t    iqs = %0.3fA\n\t    ids = %0.3fA\n\t    iqr = %i\n\t    idr = %i",iqs,ids,iqr,idr);
printf("\n\t    The stator flux linkages are");
printf("\n\t    psi_qs = %0.3fmWb-turn\n\t    psi_ds = %0.3fWb-turn\n\t    psi_s = %0.3fWb-turn",psi_qs*10^3,psi_ds,psi_s);
printf("\n\t    The rotor flux linkages are");
printf("\n\t    psi_qr = %0.3fmWb-turn\n\t    psi_dr = %0.3fWb-turn\n\t    psi_r = %0.3fWb-turn",psi_Qr*10^3,psi_dr,psi_r);
printf("\n\t    The magnetizing flux linkages are");
printf("\n\t    psi_mq = %0.3fmWb-turn\n\t    psi_md = %0.3fWb-turn\n\t    psi_m = %0.3fWb-turn",psi_mq*10^3,psi_md,psi_m);
printf("\n\t(b).The flux producing stator current If is %0.3fA",If);
printf("\n\t    From Eq(15.132) gives developed torque Td is 0");
printf("\n\t    From Eq(15.149) the value of developed torque Td is %0.3fN-m",Td1);
printf("\n\t(c).The torque needed to produce output power Po, Te is %0.3fN-m",Te);
printf("\n\t    The torque constant Ke is %0.3f",Ke);
printf("\n\t    The rotor current Ir is %0.3fA",Ir);
printf("\n\t    The stator current Is is %0.2fA",Is);
printf("\n\t    The torque angle theta_T is %0.2f°",theta_T);
printf("\n\t(d).The slip speed wsl is %0.2frad/sec",ws1);
printf("\n\t    The slip gaing Ks1 is %0.3f",Ks1);
//Some answers may change due to round-off error.
