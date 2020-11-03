//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
//Equation of acceleration: a = 10/(v + 1)
//Rewriting the equation:
//(v^2 + v) dv = 10 ds            -(i)
//Integrating (i):
//v^3/3 + v^2/2 = 10*s + C1       -(ii)
v = poly(0,"v");
C1 = v^3/3 + v^2/2;
//Substituting s = 0 and v = 0 in (ii):
s = 0;
v = 0;
C1 = pol2str(C1);
C1 = evstr(C1);

//2*v^3 + 3*v^2 = 60*s            -(iii)

//Substituting v = 10 m/s in (iii):
s = (integrate('v^2 + v','v',0,10))/10;       //(m)
printf("Distance in which the train will attain 35 km.p.h = %.2f m",s);
