clc
clear
close

n=[-2:10]';//defining the discrete time

//*******************************part(a)(non-repeated roots)*********************

y1= [25/4;0;zeros(length(n)-2,1)];//predefining the initial conditions + zero output array
for k=1:length(n)-2
y1(k+2) = 0.6*y1(k+1) + 0.16*y1(k);
end;
subplot(1,3,1);plot2d3(n,y1,[2]);title("(part_a)ZIR of systems with non-repeated roots","fontsize",4);
legend("stable");

//*******************************part(b)(repeated roots)*********************

y2= [-2/9;-1/3;zeros(length(n)-2,1)];//predefining the initial conditions + zero output array
for k=1:length(n)-2
y2(k+2) = -6*y2(k+1)-9*y2(k);
end;
subplot(1,3,2);plot2d3(n,y2,[2]);title("(part_b)ZIR of systems with repeated roots","fontsize",4);
set(gca(),"zoom_box",[-10 -max(y2) 10 max(y2)],"x_location","middle","y_location","middle");
legend("unstable");

//*******************************part(c)(complex roots)*********************

y3= [1;2;zeros(length(n)-2,1)];//predefining the initial conditions + zero output array
for k=1:length(n)-2
y3(k+2) =1.56* y3(k+1) -0.81*y3(k);
end;
subplot(1,3,3);plot2d3(n,y3,[2]);title("(part_c)ZIR of systems with complex roots","fontsize",4);
set(gca(),"zoom_box",[-10 -2.5 10 2.5],"x_location","middle","y_location","middle");
legend("marginally stable");
