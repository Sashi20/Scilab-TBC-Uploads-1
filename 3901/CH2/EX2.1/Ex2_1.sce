clc
clear
close;
funcprot(0)

//*********************part a(non-repeated real roots)*************************
//---------------------------------------
//---------------------------------------
function dy= f(t,y)
    dy=zeros(2,1);
    dy(1)=y(2);
    dy(2)=-3*y(2)-2*y(1);
endfunction

y0=[0;-5];
t0=0;
t=linspace(0,10,500);
y=ode(y0,t0,t,f);   //solving the 2nd order ode system equation

figure(1)
subplot(1,3,1);plot(t,y(1,:));     //plotting the obtained result
title("ZIR of the system(non-repeated roots)_part_a","fontsize",4);
xlabel("time","fontsize",4);
ylabel("y(ZIR)","fontsize",4);

subplot(1,3,2);plot(t,-5.*exp(-t)+5.*exp(-2.*t));//plotting the estimated answer for comparision
title("estimated ans for comparison_part a","fontsize",4);
xlabel("time","fontsize",4);
ylabel("-5.*exp(-t)+5.*exp(-2.*t)","fontsize",4);

//--------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------



//****************************part b(repeated real roots)******************************
function dy= f(t,y)
    dy=zeros(2,1);
    dy(1)=y(2);
    dy(2)=-6*y(2)-9*y(1);
endfunction

y0=[3;-7];
t0=0;
t=linspace(0,10,500);
y=ode(y0,t0,t,f);   //solving the 2nd order ode system equation

subplot(1,3,3);plot(t,y(1,:));     //plotting the obtained result
title("ZIR of the system(repeated roots)_part b","fontsize",4);
xlabel("time","fontsize",4);
ylabel("y(ZIR)","fontsize",4);

figure(2)
subplot(1,3,1);plot(t,(3+2*t).*exp(-3*t));//plotting the estimated answer for comparision
zoom_rect([0,-0.5,15,3])
title("estimated ans for comparison_part b","fontsize",4);
xlabel("time","fontsize",4);
ylabel("(3+2*t).*exp(-3*t))","fontsize",4);

//--------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------



//********************part c(non-repeated imaginary roots)**************************8
function dy= f(t,y)
    dy=zeros(2,1);
    dy(1)=y(2);
    dy(2)=-4*y(2)-40*y(1);
endfunction

y0=[2;16.78];
t0=0;
t=linspace(0,10,500);
y=ode(y0,t0,t,f);   //solving the 2nd order ode system equation

subplot(1,3,2);plot(t,y(1,:));     //plotting the obtained result
title("ZIR of the system(imaginary roots)_part c","fontsize",4);
xlabel("time","fontsize",4);
ylabel("y(ZIR)","fontsize",4);


subplot(1,3,3);plot(t,4*exp(-2*t).*cos(6*t-%pi/3));//plotting the estimated answer for comparision
//zoom_rect([0,-0.5,15,3])
title("estimated ans for comparison_part c","fontsize",4);
xlabel("time","fontsize",4);
ylabel("4*exp(-2*t).*cos(6*t-%pi/3)","fontsize",4);
