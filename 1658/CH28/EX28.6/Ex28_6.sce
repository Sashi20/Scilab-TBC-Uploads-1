clc;
//e.g 28.6
L1=2*10**-3;
L2=20*10**-6;
fo=950*10**3;
C=1/(4*%pi^2*(L1+L2)*fo^2);
disp('pF',C*10**12,"C=");
fo=2050*10**3;
C=1/(4*%pi^2*(L1+L2)*fo^2);
disp('pF',C*10**12,"C=");
