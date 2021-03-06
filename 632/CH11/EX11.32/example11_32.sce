//clc()
m = 10;//kg(air)
N = m / 29;//kmol
P1 = 100;//kPa
T1 = 300;//K
R = 8.314;
V1 = N * R * T1 / P1;
V2 = V1;
T2 = 600;//K
Cv = 20.785;//kJ/kmolK
Cp = 29.099;//kJ/kmolK
U = N * Cv * (T2 - T1);
Q = U;
W = Q - U;
H = U + N * R * ( T2 - T1 );
disp("kJ",U,"(a)Change in internal energy at constant volume = ")
disp("kJ",Q,"heat supplied at constant volume = ")
disp("kJ",W,"Work done at constant volume = ")
disp("kJ",H,"Change in Enthalpy at constant volume = ")
P2 = P1;
H2 = N * Cp * ( T2 - T1 );
Q2 = H2;
U2 = H2 - N * R * (T2 - T1);
W2 = Q2 - U2;
disp("kJ",U2,"(b)Change in internal energy at constant Pressure = ")
disp("kJ",Q2,"heat supplied at constant Pressure = ")
disp("kJ",W2,"Work done at constant Pressure = ")
disp("kJ",H2,"Change in Enthalpy at constant Pressure = ")