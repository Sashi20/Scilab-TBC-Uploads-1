//example 9
//entropy generation
clear
clc
Qout=1 //value of heat flux generated by 1kW of electric power
T=600 //temperature of hot wire surface in K
Sgen=Qout/T //entropy generation in kW/K
printf(" \n hence,entropy generation is Sgen=%.5f kW/K.\n",Sgen)