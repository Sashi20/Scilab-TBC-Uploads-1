clc
clear
close;


function y=X(om)
    y=1.*(abs(om)<=%pi/4);
endfunction

omega=linspace(-%pi,%pi,1024);
domega=omega(2)-omega(1);
q=length(omega);
n=-80:1:q-81;
p=1;
for n1=n
   r(p)=(1/(2*%pi)).*sum(X(omega).*exp(%i*omega*n1).*domega);
   p=p+1;
end

figure(1)
subplot(1,2,1);plot(omega,X(omega));
title("X(w)","fontsize",4);
set(gca(),"y_location","middle","zoom_box",[-4 0 4 1.5]);
subplot(1,2,2);plot2d3(n,r,[5]);
set(gca(),"zoom_box",[-18 -0.26 18 0.26],"x_location","middle","y_location","middle");
title("x[n]","fontsize",4);
