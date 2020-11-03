//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 16: SOUND AND HEARING
//EX 16.11: A TALE OF TWO PIPES
clc;
clear;
f1=220; //fundamental frequency of stopped organ pipe in Hz
v=345; //speed of sound in m/s
L_stopped=v/(4*f1); //length of stopped organ pipe in m
f5=5*f1; //frequency of second overtone of stopped pipe in Hz
L_open=(3*v)/(2*f5); //length of open pipe having third harmonic same as f5
printf('Length of stopped pipe: %f m',L_stopped);
printf('\nLength of open pipe: %f m',L_open);

