clc; clear;
// Example 5.3
// Page 131
// Given data
// There is error with this example in the text book, 11-4.4=6.6 while, in the text book its given 5.6 
cs=3; // BOD con in stream, mg/L
DO_stream=9; // DO con, mg/L
Qs=15; // stream discharge, mgd
cw=50; // BOD con in effluent, mg/L
DO_sewage=2; // DO con in sewage, mg/L
Qw=5; // discharge with BOD, mgd
DO_sat=11; // saturated DO, mg/L
k1=0.2; // deoxygenation rate conctant, d^-1
k2=0.5; // reaction rate conctant, d^-1
//estimation
BODL=(cs*Qs+cw*Qw)/(Qs+Qw); // diluted 5 days BOD concen from eq 5-1, mg/L
DO=(DO_stream*Qs+DO_sewage*Qw)/(Qs+Qw); // DO con, mg/L, from eq 5-1

Di=DO_sat-DO; // initial oxygen deficit, mg/L

tc= (1/(k2-k1))*log10((k2/k1)*(1-Di*((k2-k1)/(k1*BODL)))); // time for critical oxygen dificit, days
Dc=(k1*BODL/(k2-k1))*(10^(-k1*tc)-10^(-k2*tc))+ (Di*10^(-k2*tc)); // critical oxygen dificit, mg/L, eq. 5-3

min_DO=DO_sat-Dc; // minimum DO in stream, mg/L

printf('The minimum DO in the stream = %f mg/L',min_DO)
//clear




