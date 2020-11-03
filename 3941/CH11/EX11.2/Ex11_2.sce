//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 11.2
//Finding the Performance Parameters of a Single-Phase Full-Wave Controller with an RL Load.

clc;
clear;
Vs=120;                    //Input rms voltage in volts.
L=6.5;                     //Load inductance in milli Henry.
R=2.5;                     //Load inductance in Ohm.
alp=(90*%pi)/180;           //Delay angle in degree.
f=60;
w=2*%pi*f;                 //Calculating the resonant frequency.
ang=atan((w*L*10^-3)/R);  //Calculating load angle.
Z=sqrt(R^2+(w*L*10^-3)^2);//Calculating load impedence.
//Calculating the values of Eq 11.11 to find the excitation angle.
function a=f(bet)
    a=((sin(alp-ang))*(exp(((R/(L*10^-3))*(alp-bet))/w)))-sin(bet-ang)
endfunction
bet0=3                     //Intial condition for solving Eq 11.8 to find excitation angle
bet=fsolve(bet0,f);        //Solving the Eq 11.9 to find the excitation angle.
del=bet-alp;               //Calculating the conduction angle.
Vo=Vs*sqrt((1/%pi)*((del)+(sin(2*alp)/2)-(sin(2*bet)/2)));//Calculating output voltage.(Book answer is wrong).
//Calculating the Equation to find rms thyristor current from the Eq 11.11.
funcprot(0)
function a=f(wt)
    a=(sin(wt-ang)-(sin(alp-ang)*exp((R/(L*10^-3))*((alp/w)-(wt/w)))))^2
endfunction
a=alp;b=bet;   //Values of limits to integrate the Eq 1111 to find rms thyristor current.
IR=sqrt((1/%pi)*(intg(a,b,f)))*(Vs/Z);//Integrating the Eq 11.11 to find the rms thyristorcurrent.
Io=sqrt(2)*IR;              //Calculating thyrister output curretnt.
//Calculating the  Equation average thyristor current from Eq 11.12.
funcprot(0)
function b=f(wt)
    b=(sin(wt-ang)-(sin(alp-ang)*exp((R/(L*10^-3))*((alp/w)-(wt/w)))))
endfunction
IA=((sqrt(2)*Vs)/(2*%pi*Z))*(intg(a,b,f));//Integrating the Eq 11.12 to find the average thyristor current.
Po=Io^2*R;                   //Calculating the output power.
VA=Vs*Io;                    //Calculting the input VA rating.
PF=Po/VA;                    //Calculating the power factor.
printf("\n\t(a).The excitatation angle bet is %0.1f degree",bet*180/%pi);
printf("\n\t    The conduction angle del is %0.1f degree",del*180/%pi);
printf("\n\t(b).The rms output voltage Vo is %0.2fV",Vo);
printf("\n\t(c).The rms thyristor current IR is %0.2fA",IR);
printf("\n\t(d).The output current Io is %0.1fA",Io);
printf("\n\t(e).The average thyristor current IA is %0.2fA",IA);
printf("\n\t(f).The output power Po is %0.1fW",Po);
printf("\n\t    The input VA rating is %0.0fW",VA);
printf("\n\t    The power factor PF is %0.3f(lagging)",PF);
//Some answers are changed due to round off error.
