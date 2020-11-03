//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
s = 50;   //(mm)(Spring stretched by the application of force)
d = 1;    //(mm)(Stretching of spring)
F = 10;   //(N)(Force)

//Force required to stretch the spring by 50 mm:
FS = F * s;      //(N)

//Average force:
FA = FS/2;       //(N)

//Work done:
W = (FA * s)/1000;     //(J)
printf("Work done = %.2f J",W);
