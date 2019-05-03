clc
clear
close;

n=0:18;
h1=4*(n==0)-3*(0.5).^n;
h2=(2^n);
h_cas=conv(h1,h2);//response of cascaded system
subplot(1,3,1);plot2d3(n,h1,[5]);title("h1_system 1","fontsize",4);
set(gca(),"zoom_box",[0 -max(h1) 18 max(h1)],"x_location","middle");
subplot(1,3,2);plot2d3(n,h2,[5]);title("h2 of system 2","fontsize",4);
subplot(1,3,3);plot2d3(n,h_cas(1:length(n)),[2]);title("h of cascaded system","fontsize",4);
