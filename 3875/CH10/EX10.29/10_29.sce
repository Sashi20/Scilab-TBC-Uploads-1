clc;
clear;
m=9.1*10^-31 //mass of electron in kg
v=4*10^5 //velocity in m/s
u=10^-4 //uncertainity in momentum
h=6.63*10^-34 //plancks constant in J-s


//calculation
delta_p=u*m*v //in kg-m/s
delta_x=h/(2*%pi*delta_p*10^-9) //dividing by 10^-9 to convert into nm to calculate uncertainity 

mprintf("The uncertainity in the position of the electron is greater than or equal to %4.2f nm",delta_x) //The answer provided in the textbook is wrong.
