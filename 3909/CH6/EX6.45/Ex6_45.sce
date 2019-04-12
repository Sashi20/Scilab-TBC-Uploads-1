clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.45
//calculation of rest mass of original bomb
//given data
m_01=1.5; //rest mass (in kg) of one fragment of stationary bomb
m_02=1.5; //rest mass (in kg) of another fragment of stationary bomb
c=3*10^8; //speed of light (in m/s)
//calculation
v=0.8*c; //speed of one fragment is 0.8 times speed of light
m_0=((m_01*c^2)/sqrt(1-(v/c)^2)+(m_02*c^2)/sqrt(1-(v/c)^2))/c^2; //rest mass (in kg) of the original bomb
printf("\nrest mass of the original bomb is %0.1f kg",m_0)
