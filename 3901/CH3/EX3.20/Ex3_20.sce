clear ;
close ;
clc ;


n =0:14;
x= cos(2*n+%pi/3);//forcing function
a =[1 -1 0.16];
b =[0 1 0.32];
y= filter (b,a,x);
plot2d3 (n,y,[2]); 
title("forced respose","fontsize",4);
set(gca(),"x_location","middle");
