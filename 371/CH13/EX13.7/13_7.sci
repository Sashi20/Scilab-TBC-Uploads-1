//Choppers and Transportation System Application//
//Example 13.7//
//R1=rotor resistance before introduction of control//
//R2=rotor resistance after introduction of control//
printf('R2=1.5*R1');
R2=((R1*Ton)+(R1+R1)*Toff)/T;//rotor resistance referred to stator in ohms//
printf('\nthe above condition satisfies when Ton=Toff');
T=4;//total time period in ms//
f=1000/T;//chopper frequency in hz//
printf('\nChopper frequency=f=%fhz',f);