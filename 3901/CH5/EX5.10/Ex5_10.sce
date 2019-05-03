clc ;
clear ;
close ;


n =0:20;
T=0.001;
x1=1.^n;
x2=cos(%pi/6*n-0.2);
x3=cos(1500*n*T);//sampled input
a =[1 -0.8];
b =[1 0];
y1= filter (b,a,x1);
y2= filter (b,a,x2);
y3= filter (b,a,x3);

subplot(1,3,1);plot2d3(n,y1,[5]); 
title("y[n] for part(a)","fontsize",4);

subplot(1,3,2);plot2d3(n,y2,[5]); 
title("y[n] for part(b)","fontsize",4);
set(gca(),"x_location","middle","zoom_box",[0 -2.1 10 2.1]);

subplot(1,3,3);plot2d3(n,y3,[5]); 
title("y[n] for part(c)","fontsize",4);
set(gca(),"x_location","middle","zoom_box",[0 -1.1 10 1.1]);
