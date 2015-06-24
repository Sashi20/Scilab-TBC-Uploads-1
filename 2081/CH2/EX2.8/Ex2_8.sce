fc=900*10^6//carrier frequency of transmission
fdm=20//max. doppler frequency
p=1//normalized specified level
Nl=2.5*fdm*p*(%e)^(-1*(p^2))//level crossing rate
c=3*10^8//velocity of light
V=fdm*c/fc
Vm=V*18/5//maximum speed
printf('positive going level crossing rate = %.2f crossings per second',Nl);
printf('\nmaximum velocity of the mobile for the given doppler frequency= %.f kmph',Vm)
