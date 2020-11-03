// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 1.2 - Cycle time and Cost per piece
// Given that
ic = 500000 // Initial cost plus installation in $
n = 7 // Anticipated life in years
w = 50 //number of weeks per year
s = 2 // Number of shift
D = 5 // Number of days in week
h = 8 // Shift hours
Roh = 0.35 // Overhead rate on the equipment in Percentage
H = w*s*D*h // Annual number of hours of Operation in hr/yr
Ceq = (ic/(60*n*H))*(1+Roh)  // Equipment cost rate
To = 3.72 // Processing time in min
Th = 1.60 // Part handling time in min
p = 20 // Number of pieces changing
t = 2 // setup time in min
Q = 100 // Batch quantity, number of pieces (pc)
Ts = 2.5 // Machine setup time in hr
Rh = 16.50 // Hourly wage rate is $/hr
Rloh = 0.40 // labor overhead rate in percentage
tool_cost = 4.40 // Tool cost in Dollar
Cm = 2.35 // Starting material cost in dollars
Tt = t/p // Tool handling time in min for 20 tools
Tc = To + Th + Tt  // Cycle time of the unit operation in min/pc
Tp = ((Ts*60)/Q)+Tc //Average production time per piece inculding the effect of setup time in min/pc
Rp = (60/Tp) // Hourly production rate in pc/hr
Cl = Rh/60 *(1+Rloh) //  labor cost rate, $/min;
Ct = tool_cost/20 // Each tool can be used for 20 pieces in $/pc
Cpc = Cm + ((Cl+Ceq)*Tp) + Ct // Cost per piece in $/pc
printf("\n The Cycle time for the piece = %.2f min/pc \n Average production rate = %.2f min/pc \n Hourly production rate = %.2f pc/hr \n Cost per piece = $%.2f /pc",Tc,Tp,Rp,Cpc) 
// The answers vary due to round off error


