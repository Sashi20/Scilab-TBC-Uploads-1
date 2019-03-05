exec('6_19data.sci')
Cl_Cd=sqrt(Cdo*%pi*e*AR)/(2*Cdo);//ratio(Cl/Cd)
disp(Cl_Cd)
R=(n/c)*Cl_Cd*log(Wo/(W-W1))*0.62137*10^-3 ;//range in miles
printf("\Answer:\n")
printf("\n\maximum range: %f miles\n\n",R)