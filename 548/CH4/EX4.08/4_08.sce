exec('4_08data.sci')
disp("T2=T1*(P2/P1)^((y-1)/y)","from isentropic condition:")
T2=T1*(P2/P1)^((y-1)/y)//temperature at exit
printf("\Answer:\n")
printf("\n\Gas temperature at the exit: %f K\n\n",T2)