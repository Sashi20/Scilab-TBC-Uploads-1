

clear
//Given
dia_out = 10       //mm- outer diameter of shaft
dia_in  = 8     //mm- inner diameter of shaft
c_out = dia_out/2 //mm - outer Radius of shaft
c_in  = dia_in/2  //mm - inner radius of shaft
T = 40*10**3           //N/mm -Torque in the shaft
//calculations
dia_mean = (dia_out+dia_in)/2
dia_diff = dia_out-dia_in
t = 2*%pi*dia_mean**2*dia_diff

stress = T/t

printf("\n The shear stress due to torsion is  %0.2f MPa",stress)