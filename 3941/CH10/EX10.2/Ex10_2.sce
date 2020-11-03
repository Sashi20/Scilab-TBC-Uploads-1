 //Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 10.2
//Finding the Current Ratings of Single-Phase Full Converter with an RL load.

clc;
clear;
L=6.5;                            //Load inductance in milli Henry.
R=0.5;                            //Load resistance in Ohm.
E=10;                             //Voltage of battery in volts.
Vs=120;                           //Supply voltage in volts.
f=60;                             //Frequency in Hz.
alp=60;                           //Firing angle in degree.
w=2*%pi*f;                        //Calculating frequency in rad/sec.
theta=atan((w*L*10^-3)/R);         //Calculating the load angle.
Z=sqrt(R^2+(w*L*10^-3)^2);        //Calculating load impedence.
alp1=alp*%pi/180;                 //Converting the firing angle into radians
ILo=((sqrt(2)*Vs/Z)*((-(sin(alp1-theta))-(sin(alp1-theta)*(exp(-((R/(L*10^-3))*(%pi/w))))))/(1-(exp(-((R/(L*10^-3))*(%pi/w)))))))-(E/R);//Calculating the steady state load current.
//Calculating the equation of average thyristor current from Eq 10.8.
funcprot(0)
function a=f(wt)
    a=((sqrt(2)*Vs/Z)*sin(wt-theta))-(E/R)+(((ILo)+(E/R)-((sqrt(2)*Vs/Z)*(sin(alp1-theta))))*exp((R/(L*10^-3))*((alp1/w)-(wt/w))))
endfunction
a=alp1;b=%pi+alp1;                  //Limits of integeration of eq 10.8 for calculating tyristor current.
IA=(1/(2*%pi))*(intg(a,b,f));      //Calculating the thyristor current by integrating eq 10.8
//Calculating the eqation of rms thyristor current from Eq 10.8.
funcprot(0)
function b=f(wt)
    b=(((sqrt(2)*Vs/Z)*sin(wt-theta))-(E/R)+(((ILo)+(E/R)-((sqrt(2)*Vs/Z)*(sin(alp1-theta))))*exp((R/(L*10^-3))*((alp1/w)-(wt/w)))))^2
endfunction
IR=sqrt((1/(2*%pi))*(intg(a,b,f)));   //Calculating the thyristor rms current.
Irms=sqrt(2)*IR;                      //Calculating rms output current.
Idc=2*IA;                             //Calculating average dc output current.
//Calculating critical value of delay angle from Eq 10.10.
alp_c=theta-asin(((1-(exp(-(%pi/tan(theta)))))/(1+(exp(-(%pi/tan(theta))))))*(((E/(sqrt(2)*Vs))/cos(theta))));
printf("\n\t(a).The steady state load curret ILo is %0.2fA",ILo);
printf("\n\t(b).The average thyristor current IA is %0.2fA",IA);
printf("\n\t(c).The rms thyristor current IR is %0.2fA",IR);
printf("\n\t(d).The rms output current Irms is %0.1fA",Irms);
printf("\n\t(e).The average output current Idc is %0.1fA",Idc);
printf("\n\t    Tht critical delay angle alp_c is %0.2f degree",alp_c*180/%pi);
//Some answers are changed due to roundoff error.
