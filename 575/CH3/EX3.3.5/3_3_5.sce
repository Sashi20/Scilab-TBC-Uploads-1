clc
exec('335.sci')
mass_conc=conc*98
printf("mass concentration of sulfuric acid=%f kg/m^3",mass_conc)
mass_flowrate=rate*mass_conc/60
printf(" \n Mass flow rate of sulfuric acid=%f kg/s",mass_flowrate)
massfraction=1/(rate*D*1000/60)
printf(" \n Mass fraction of sulfuric acid=%f",massfraction)