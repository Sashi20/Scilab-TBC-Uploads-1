clc
exec('751.sci')
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
deltaH=H0-H50
deltaU=deltaH+((Pfinal*Vfinal-Pinitial*Vinitial)*1.987/10.73)
printf(" \n change in Specific Enthalpy=%f Btu/lbm",deltaH)
printf(" \n change in Specific Internal Energy=%f Btu/lbm",deltaU)