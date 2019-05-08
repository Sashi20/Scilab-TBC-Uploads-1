//Example 3.7, Page Number 135
//Propogation Delay of a 1.2µm CMOS Inverter 
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
Vgs=5     // Gate source voltage in volts(V)
Vds=5     //Drain source voltage in volts(V)
Vdd=5      //Supply voltage in volts(V)
Wp=5.4*(10^-6)   //PMOS Channel width in metres(m)
Wn=1.8*(10^-6)   //NMOS Channel width in metres(m)
L_eff=0.9*(10^-6)    //Effective channel length in metres(m)
Kn=19.6*(10^-6)    //in A/V^2
Kp=5.4*(10^-6)      //in A/V^2
lamda_p=0.19               //Channel modulation of PMOS in voltage inverse(V^-1)
lamda_n=0.06               //Channel modulation of NMOS in voltage inverse(V^-1)
Vt0=0.74            //Threshold voltage in volts(V)

//Outputs
Idp_Vout_zero=(Kp/2)*(Wp/L_eff)*((Vgs-Vt0)^2)*(1+(lamda_p*Vds))       //Current through PMOS in amperes(A) when output voltage is zero
Idp_Vout=Kp*(Wp/L_eff)*((Vgs-Vt0)*(Vdd/2)-((Vdd)^2)/8)       //Current through PMOS in amperes(A) when output voltage is not zero
Idn_Vout_zero=(Kn/2)*(Wn/L_eff)*((Vgs-Vt0)^2)*(1+(lamda_n*Vds))       //Current through NMOS in amperes(A) when output voltage is zero
Idn_Vout=Kn*(Wn/L_eff)*((Vgs-Vt0)*(Vdd/2)-((Vdd)^2)/8)       //Current through NMOS in amperes(A) when output voltage is zero

//Results
mprintf("\nCurrent through PMOS Idp(Vout=0): %.6f amperes",Idp_Vout_zero);
mprintf("\nCurrent through PMOS Idp(Vout=2.5): %.6f amperes",Idp_Vout);
mprintf("\nCurrent through NMOS Idn(Vout=0): %.6f amperes",Idn_Vout_zero);
mprintf("\nCurrent through NMOS Idn(Vout=2.5): %.6f amperes",Idn_Vout);

//Outputs
//Current through PMOS Idp(Vout=0): 0.000573 amperes (or) 0.573mA
//Current through PMOS Idp(Vout=2.5): 0.000244 amperes (or) 0.244mA
//Current through NMOS Idn(Vout=0): 0.000462 amperes (or) 0.46.2mA
//Current through NMOS Idn(Vout=2.5): 0.000295 amperes (or) 0.295mA
