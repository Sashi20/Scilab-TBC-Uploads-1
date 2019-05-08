//Example 2.9, Page Number 50
//MOS Transistor Capacitances
//Scilab 6.0.1
//Windows 10 
clc;

//Inputs
t_ox=20*(10^-9)     //Thickness of oxide layer in metres(m)
epsilon_ox=3.5*(10^-11)    //Electrical permitivity of oxide layer in farad per metre(F/m)
L=1.2*(10^-6)       //Length of the channel in metres(m)
W=1.8*(10^-6)       //Width of the channel in metres(m)
Ls=3.6*(10^-6)      //Lenght of side wall of source junction in metres(m)
Ld=3.6*(10^-6)      //Lenght of diffusion wall of source junction in metres(m)
xd=0.15*(10^-6)      //Lateral diffusion in metres(m)
Cjo=3*(10^-4)  //Capacitance under zero-bias in farads per metre square(F/m^2)
C_jswo=8*(10^-10)   //Side wall capacitance under zero-bias in farads per metre (F/m)

//Outputs
Cox=(epsilon_ox/t_ox)      //Gate capacitance per unit area in farads per metre square(F/m^2)
Cg=W*L*Cox           //Total gate capacitance in farads(F)
C_gso=W*xd*Cox        //Overlap capacitance in farads(F)
C_channel=Cg-(2*C_gso)   //Channel capacitance which splits between source,drain,bulk terminals in farads(F)
Cd_bottom=Cjo*Ld*W         //Diffusion capacitance of bottom wall in farad(F)
Cd_side=C_jswo*(2*Ld+W)  //Diffusion capacitance of side wall in fard(F)


//Results
mprintf("\nGate capacitance per unit area Cox: %.5f farad/metre^2",Cox)
mprintf("\nTotal gate capacitance Cg: %.20f farad",Cg)
mprintf("\nOverlap capacitance C_gso: %.20f farad",C_gso)
mprintf("\nChannel capacitance C_channel: %.20f farad",C_channel)
mprintf("\nDiffusion capacitance of bottom wall Cd_bottom: %.20f farad",Cd_bottom)
mprintf("\nDiffusion capacitance of side wall Cd_side: %.20f farad",Cd_side)

//The diffusion capacitance seems to dominate gate capacitance.Advanced processes are reduce the diffusion capacitance by using materials such as SiO2 to isolate devices.This approach is  called Trench Isolation

//Outputs
//Gate capacitance per unit area Gox: 0.00175 farad/metre^2 (or) 1.75 fF/µm^2
//Total gate capacitance Cg: 0.00000000000000378000 farad (or) 3.78000 fF
//Overlap capacitance C_gso: 0.00000000000000047250 farad (or) 0.47250 fF
//Channel capacitance C_channel: 0.00000000000000283500 farad (or) 2.83500 fF
//Diffusion capacitance of bottom wall Cd_bottom: 0.00000000000000194400 farad (or) 1.94400 fF
//Diffusion capacitance of side wall Cd_side: 0.00000000000000720000 farad (or) 7.20000 fF
