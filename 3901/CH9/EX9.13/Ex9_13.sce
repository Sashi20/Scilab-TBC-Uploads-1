clc
clear
close;


a=[1 -0.5]; b=[1 0];
n=[0:10]';x=(0.8).^n;
zsr=filter(b,a,x);
z_check=(-5/3)*(0.5).^n+(8/3)*(0.8).^n;
subplot(1,2,1);plot2d3(n,zsr,[2]);
title("ZSR of the given system","fontsize",4);
subplot(1,2,2);plot2d3(n,z_check,[5]);
title("Estimated answer for checking","fontsize",4);
