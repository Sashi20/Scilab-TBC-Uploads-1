clc
clear

//defining unit step function
function y=u(x)
   y=sign((sign(x)+1))
endfunction

format(12)
dt=0.0001;   //defining increment in time vector
t=-2:dt:20;
f=2.*(u(t+1)-u(t))+2.*exp(-t/2).*u(t); //defining the enrgy signal in fig(a)
g=t.*(u(t+1)-u(t-1));                 //defining one cycle of the periodoc signal from fig(b)

E=sum((f.^2)*dt);   //calculating energy of f
P=0.5*sum((g.^2)*dt); //calculating power of g
printf("\nthe energy of the signal a is %f",E);//ans won't be exactly 8 as infinity is not defined howmuch large the limit maybe
printf("\nthe power of the signal b is %f",P);
