//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 18: THERMAL PROPERTIES OF MATTER
//EX 18.7: CALCULATING RMS AND AVERAGE SPEEDS
clc;
clear;
v=[500 600 700 800 900]; //given velocities of molecules in m/s 
v_av=mean(v); //average velocity in m/s
printf('Average velocity: %f m/s',v_av);
v_square_av=mean(v^2); //mean square velocity in m/s
v_rms=sqrt(v_square_av); //RMS velocity in m/s
printf('\nRMS velocity: %f m/s',v_rms); //answer vary due to round off error
