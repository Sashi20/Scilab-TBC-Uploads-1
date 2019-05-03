clc; clear;
// Example 9.7
// Page 266
// Given data
A1=1; // drainage area of chatchment 1, ha
C1=0.4; // runoff coefficient for catchment 1
A2=1.5; // dainage area of catchment 2
C2=0.3; // runoff coefficient for catchment 2
A3=2; // dainage area of catchment 3
C3=0.2; // runoff coefficient for catchment 3
Tc=5; // time of concentration, min
S1=0.0035; // slope for catchment 1
S2=0.002; //slope for catchment 2
S3=0.0015; //slope for catchment 3
D2=120; // distance from catchment 1 to catchment 2
D3=180; // distance from catchment 2 to catchment 3
//estimation
//A1=1*10000; // drainage area of catchment 1, m^2
I1=0.15; // intensity, m/h for Tc=5
Q1=C1*I1*A1*10000; // peak flow in catchment 1, m^3/h
Q1=Q1/3600; // peak flow in catchment 1, m^3/s
D1=45; // diameter in catchment 1, in cm for Q1 and S1 from mannings monograph
V1=1.05; // velocity in catchment 1, in m/s from mannings monograph
C=1/(A1+A2)*(A1*C1+A2*C2); // composite runoff coefficient
T=D2/V1; // total time of flow to inlet 2
Tc=Tc+T; // time of concentration to inlet 2
I2=0.145; // intensity, m/h for given Tc
A2=A1+A2; // in m^2
Q2=C*I2*A2*10000; // peak flow at inlet 2, m^3/h
Q2=Q2/3600; // peak flow at inlet 2, m^3/s
D2=65; // diameter in catchment 2, in cm for Q2 and S2 from mannings monograph
V2=1.02; // velocity at inlet 2, in m/s from mannings monograph

C=1/(A1+A2+A3)*(A1*C1+A2*C2+A3*C3); // composite runoff coefficient
T=D3/V2; // total time of flow to inlet 3
Tc=Tc+T; // time of concentration to inlet 3
I3=0.135; // intensity, m/h for given Tc
A3=A2+A3; // in m^2
Q3=C*I3*A3*10000; // peak flow at inlet 3, m^3/h
Q3=Q3/3600; // peak flow at inlet 3, m^3/s
D3=80; // diameter in catchment 3, in cm for Q3 and S3 from mannings monograph
V3=1; // velocity at inlet 3, in m/s from mannings monograph
printf('The design flow at reach 1 = %f m^3/s\n',Q1)
printf('The design flow at reach 2 = %f m^3/s\n',Q2)
printf('The design flow at reach 3 = %f m^3/s\n',Q3)
printf('The required pipe diameter at reach 1 = %f cm\n',D1)
printf('The required pipe diameter at reach 2 = %f cm\n',D2)
printf('The required pipe diameter at reach 3 = %f cm',D3)
clear




