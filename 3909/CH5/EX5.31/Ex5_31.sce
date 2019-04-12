clc;clear;
//OS windows 7
//scilab 6.0.1
//example 5.31
//calculation of probability that electron will tunnel through the barrier if its width is (a)0.10 nm (b)1.0 nm
//given data
m=9.1*10^-31; //mass (in kg) of electron
U=40*1.6*10^-19
E=30*1.6*10^-19; //energy (in J) of electron
h=1.054*10^-34; //height (in m) 
a1=0.1*10^-9; //width (in m) of barrier
a2=1.0*10^-9; //width (in m) of barrier
//(i)when a=0.1 nm
twoalpha_a1=(2*sqrt(2*m*(U-E)))/h*a1
T1=exp(-twoalpha_a1)*100; //probability that electron will tunnel through the barrier if its width is 0.10 nm
//(ii)when a=1.0 nm
twoalpha_a2=(2*sqrt(2*m*(U-E)))/h*a2
T2=exp(-twoalpha_a2); //probability that electron will tunnel through the barrier if its width is 1.0 nm
printf("\n(i)probability that electron will tunnel through the barrier if its width is 0.10 nm is %1.1f percent",T1)
printf("\n(ii)probability that electron will tunnel through the barrier if its width is 1.0 nm is %1.1e",T2)
//the answer (ii) varies due to round off error
