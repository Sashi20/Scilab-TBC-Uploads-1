clc
exec('852.sci')
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
disp("sulphuric acid balance")
m2=x*mdot/y
disp("Total Mass balance")
m1=mdot-m2
Qdot=m1*Hv+m2*Hl-mdot*Hf
printf(" Rate of Heat transfer= %f Btu/h",Qdot)