// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 1.4 - Cycle time and cost per piece
// Given that
Cm = 1.75 // Starting Material Cost in $
Ceq = 42 // Equipment Cost rate in $/hour
Tp = 0.97 // Average production time per piece in percentage
Cl = 24 // Labor cost rate in $/hr
s = 0.05 // Scrap rate of parts prodcued in Percentage
T_p = 2.20 // Cycle time in min
Rp = (60*Tp)/T_p // Production rate, including effect of availability in pc/hr
average_Rp = Rp*(1-s) // Because of 5% scrap rate the production rate of acceptable parts
Cpc = (Cm/(1-s))+((Cl+Ceq)/Tp)*((T_p)/(60*(1-s))) // Availability of Scrap rate, the part cost per piece
s_b = 0 // Scrap rate of parts prodcued is Zero Percentage for b question
Tp_b = 1 // Average production time per piece in percentage for b question
Rp_b = (60*Tp_b)/T_p // Production rate, including effect of availability in pc/hr for b question
Cpc_b = (Cm)+((Cl+Ceq)/Tp_b)*((T_p)/(60*(1-s_b))) // Availability of Scrap rate, the part cost per piece for b question
printf('The part cost for (A) = $ %.2f /pc \n The part Cost for (B) = $ %.2f \n',Cpc,Cpc_b)
