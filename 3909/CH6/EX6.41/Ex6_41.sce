clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.41
//calculation of rest mass of the bomb 
//given data
m_01=2; //rest mass (in kg) of one fragment of stationary bomb
m_02=2;//rest mass (in kg) of another fragment of stationary bomb
c=3*10^8; //speed of light (in m/s) 
//calculation
v1=0.6*c; //speed of one fragment is 0.6 times speed of light
v2=0.6*c; //speed of another fragment is 0.6 times speed of light
m_0=((m_01*c^2)/sqrt(1-(v1/c)^2)+(m_02*c^2)/sqrt(1-(v2/c)^2))/c^2; //rest mass (in kg) of the bomb
printf("\nrest mass of the bomb is %0.1f kg",m_0)
