//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 16.1
//Determining the Power Density and the Solar Efficiency.

clc;
clear;
theta=35;                        //Zenith angle in degree.
alp_dt=75;                      //Transmitance of all gases in percentage.
bet_wa=5;                       //Water vapour absorbtion in percentage.
alp_p=85;                       //Transmittance of aerosols in percentage.
sigma=3.5;                       //Standard deviation of solar distribution function.
t=2;                         //Time in hours.
rho_o=1353;                     //The extraterrestrial power density in W/m^2.
rho_ir=rho_o*cosd(theta)*((alp_dt/100)-(bet_wa/100))*(alp_p/100);//Calculating solar power density.
eta_s=cosd(theta)*((alp_dt/100)-(bet_wa/100))*(alp_p/100);//Calculating solar efficiency.
rho_max=rho_o*cos(0)*((alp_dt/100)-(bet_wa/100))*(alp_p/100);//Calculating maximum power density.
rho=rho_max*(exp((-t)/(2*sigma^2)));      //Calculating power density at t=2pm.//Book answer is wrong.
printf("\n\t(a).The solar power density rho_ir is %0.2fW/m^2",rho_ir);
printf("\n\t    The solar efficiency eta_s is %0.2fpercentage",eta_s*100);
printf("\n\t(b).The maximum power density rho_max is %0.2fW/m^2",rho_max);
printf("\n\t    The power density at t=2pm, rho is %0.2fW/m^2",rho);//Book answer is wrong.
//Some answers may change due to round-off error.
