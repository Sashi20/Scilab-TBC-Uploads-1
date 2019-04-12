clc;clear;
//OS windows 7
//scilab 6.0.1
//example 4.24
//comparison between He-Ne laser and dye-laser
//given data
//for He-Ne laser
L=0.5; //mirror separation (in m)
lambda=632.8; //wavelength (in nm)
del_nu=1.5*10^3; //frequency (in Hz)
n=1
c=3*10^8; //speed (in m/s) of light
//for dye-laser
L_dash=2.0; //mirror separation (in m)
lambda1=570*10^-9; //wavelength (in m)
lambda2=640*10^-9; //wavelength (in m)
n_dash=1.4
//calculation
del_tsp_He_Ne=(2*n*L)/c; //separation between pulses (in s) in He-Ne
del_tsp_dye=(2*n_dash*L_dash)/c; //separation between pulses (in s) in dye
del_tp_He_Ne=1/del_nu; //pulse width of He_Ne (in s)
del_lambda=lambda2-lambda1; //wavelength range (in nm)
lambda_dash=(lambda1+lambda2)/2; //wavelength (in nm)
del_tp_dye=1/((c/lambda_dash^2)*del_lambda); //pulse-width of dye (in s)
printf("\nseparation between pulses in He-Ne is %1.2e s",del_tsp_He_Ne)
printf("\nseparation between pulses in dye is %1.2e s",del_tsp_dye)
printf("\npulse width of He_Ne is %1.3f ns",del_tp_He_Ne*10^9)
printf("\npulse-width of dye is %2.1f fs",del_tp_dye*10^15)
if del_tsp_He_Ne >  del_tsp_dye then
    disp("He-Ne lasers are more suited for mode-locking")
else
    disp("Dye lasers are more suited for mode-locking")
end
if del_tp_He_Ne <  del_tp_dye then
    disp("He-Ne lasers are more suited for mode-locking")
else
    disp("Dye lasers are more suited for mode-locking")
end
//the answer of pulse width of He_Ne laser is wrong because the value of frequency is given different in the question and the answer in the textbook
//the answer of pulse width of dye varies due to round off error








