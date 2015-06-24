//signals and systems
//odd and even components
clear
close
clc
t = 0:1/100:5;
x=exp(%i.*t);
y=exp(-%i.*t);
even=x./2+y./2;
odd=x./2-y./2;
figure
a=gca();
plot2d(t,even)
a.x_location='origin'
xtitle=('even')
figure
a=gca();
plot2d(t,odd./%i)
a.x_location='origin'
xtitle=('odd')