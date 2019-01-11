// Example A-5-13
// Response to input r = 2 + t

clear; clc;
xdel(winsid());  //close all windows
exec("plotresp.sci")

s = %s;
G = syslin('c', 5, s^2 + s + 5);
t = 0:0.05:10;
r = 2 + t;
plotresp(r,t,G,'Response to input r = 2 + t');