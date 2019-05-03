clc
clear

//defining all the given datas
a=2*exp(%i*%pi/3);
b=4*exp(-%i*3*%pi/4);
c=2*exp(%i*%pi/2);
d=3*exp(-%i*3*%pi);
e=2*exp(%i*4*%pi);
f=2*exp(-%i*4*%pi);

printf("sl \t cartesian_form\n");//showing all the cartesian forms
disp("(a)    "+string(a));
disp("(b)    "+string(b));
disp("(c)    "+string(c));
disp("(d)    "+string(d));//scilab won't show exactly zero,so very small value can be regarded as 0 here
disp("(e)    "+string(e));
disp("(f)    "+string(f));
