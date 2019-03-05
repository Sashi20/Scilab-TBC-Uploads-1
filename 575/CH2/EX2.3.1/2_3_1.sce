clc
//this program is used to convert lb.ft/min^2 to kg.cm/s^2
exec('231.sci')
Final=Initial*0.453593*100/(3.281*60*60)
//the calculations involved are conversion factors
disp("final=")
disp(Final); disp("kg.cm/s^2")