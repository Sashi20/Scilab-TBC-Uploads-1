clc
exec('524.sci')
//SCFH means ft^3(STP)/h
ndot=3.95*10^5/359
printf(" Molar flowrate=%E lb-moles/hr",ndot)
V2dot=V1dot*T2*P1/(T1*P2)
printf(" \n True volumetric flowrate=%E ft^3/h",V2dot)