clc
exec('762.sci')
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
Qdot=basis*(x*Hout1+(1-x)*Hout2-x*Hin1-(1-x)*Hin2)
printf(" \n Heat required=%f KJ/Kg",Qdot/basis)