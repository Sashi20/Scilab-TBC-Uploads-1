clc
exec('753.sci')
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
disp("From Steam tables, ")
Hin=3201 //Kj/Kg
Hout=2675 //Kj/Kg
Ws= -mdot*(Hout-Hin)/3600
printf("Work delivered by Turbine to surroundings=%d Kw",Ws)