clc
E=1.1
disp(" E = "+string(E)+"eV") //initializing the value of energy level E in the crystal.
Ef=0.6
disp(" Ef = "+string(Ef)+"eV")//initializing the value of fermi level of material.
T=1000
disp(" Temp = "+string(T)+"K")//initializing the value of temperature.
k=1.38*10^-23
disp(" k = "+string(k)+"J/k") //initializing the value of boltzmann constant.
e=2.718
disp(" e = "+string(e)) //initializing the value of exponential.
a=(((-Ef+E)*1.6*10^-19)/(k*T))
disp("alpha ,a=(((-E+Ef)*1.6*10^-19)/(k*T)))= "+string(a))//calculation
fE=(1/(1+(e^a)))
disp("fE(Fermi Direc Distribution Function),fE=(1/(1+(e^a))))= "+string(fE))//calculation

//The value of Ef is different in the question than used in the solution.
//I have used the value ,used in the solution(i.e Ef=0.6)
