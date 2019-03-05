clc
exec('522.sci')
ndot=Vdot/M //kmol/h
vdot=ndot*22.4*T/(273*P)
printf("The volumetric flow rate of the stream=%f m^3/h",vdot)