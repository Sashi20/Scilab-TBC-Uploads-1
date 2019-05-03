clc
clear
close;
//error in phase calculation will there
N=1024; //samples number
n=-(N/2):N/2-1;
function y=f(n)
    y=(1/4)*sinc(%pi*n/4);
endfunction
x=f(n-2);
omega=[-N/2:(N/2)-1]*2*%pi/N;
X=fft(x);
X_mode=fftshift(abs(X));

figure(1)
subplot(2,1,1);plot2d3(n,x,[2]);
title("Given_function after time shifting by 2","fontsize",4);
set(gca(),"zoom_box",[-10 -0.26 10 0.25],"y_location","middle","x_location","middle");
subplot(2,1,2);plot(omega,X_mode,'r');
set(gca(),"y_location","middle","zoom_box",[-3 0 3 1.3]);
title("|X(w)|","fontsize",4);
