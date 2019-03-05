clc
exec('333.sci')
molO2=massO2/MO2
molCO=massCO/MCO
molCO2=massCO2/MCO2
molN2=massN2/MN2
TotalMol=molO2+molCO+molCO2+molN2
printf(" \n molefraction of O2=%f",molO2/TotalMol)
printf(" \n molefraction of CO=%f",molCO/TotalMol)
printf(" \n molefraction of CO2=%f",molCO2/TotalMol)
printf(" \n molefraction of N2=%f",molN2/TotalMol)