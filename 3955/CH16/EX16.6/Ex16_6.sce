//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 16: SOUND AND HEARING
//EX 16.6: SAME INTENSITIES, DIFFERENT FREQUENCIES
clc;
clear;
f_1000=1000; //frequency of first sound wave in Hz
f_20=20; //frequency of second sound wave in Hz
A_1000=1.2*10^-8; //displacement amplitude of first sound wave in m
A_20=(f_1000/f_20)*A_1000; //displacement amplitude of second sound wave in m (since fA=constant)
p_max=3*10^-2; //given maximum pressure of 1000 Hz or 20 Hz sound wave (since it is independent of frequency)
printf('Pressure amplitude of 20Hz wave: %e Pa',p_max);
printf('\nDisplacement amplitude of 20Hz wave: %e m',A_20);
