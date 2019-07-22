// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 13-6
//Refer Problem 13-5
//Given
V_pk_pk=60; //peak to peak value of the wave, V
V_dc=10; //dc component of the wave, V

//Computations
V_ppk= V_pk_pk/2+V_dc; //positive peak voltage, V
V_npk= -V_pk_pk/2+V_dc; //negative peak value, V

if V_dc~=0
    printf("The absolute peak value cannot be determined.\n")
end

printf("The positive peak voltage is %.0f V.\n",V_ppk)
printf("The negative peak voltage is %.0f V.",V_npk)
