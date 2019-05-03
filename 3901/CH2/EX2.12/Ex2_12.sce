clc
clear
close;

function dy= f(t,y)
    dy=zeros(2,1);
    dy(1)=y(2);
    dy(2)=-3*y(2)-2*y(1)-30*exp(-3*t);
endfunction

y0=[0;5];//initial conditions for impulse response
t0=0;
t=linspace(0,15,500);
y=ode(y0,t0,t,f);   //solving the 2nd order ode system equation

figure(1)
subplot(2,1,1);plot(t,y(1,:));     //plotting the obtained result
title("impulse_response","fontsize",4);
xlabel("time","fontsize",4);
ylabel("y(ZIR)","fontsize",4);


//checking if the obtained ans is correct

subplot(2,1,2);plot(t,-10*exp(-t)+25*exp(-2*t)-15*exp(-3*t));//plotting the estimated answer for comparision
title("estimated ans for comparison","fontsize",4);
xlabel("time","fontsize",4);
ylabel("-exp(-2*t)+2*exp(-3*t)","fontsize",4);

