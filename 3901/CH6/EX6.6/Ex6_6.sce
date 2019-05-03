clc
clear
close;


n=-12:3:12;
function cn=c(n)            //defining given cn
    cn=(16-(4/3)*n).*(n>=0);   
endfunction
function thetan=theta(n)   //defining given theta_n
    thetan=((-%pi/12)*n).*((n>=0)&(n<=6))+((%pi/12)*(n-12)).*(n>6);
endfunction

dn=(c(n)+c(-n))/2;
d_theta=(theta(n)-theta(-n));
figure(1)
subplot(1,2,1);plot2d3(n,c(n));title("C_n given","fontsize",4)
subplot(1,2,2);plot2d3(n,theta(n));title("Theta_n given","fontsize",4)
set(gca(),"x_location","top");
figure(2)
subplot(1,2,1);plot2d3(n,dn);title("|Dn|_calculated","fontsize",4)
subplot(1,2,2);plot2d3(n,d_theta);title("Theta(Dn)_calculated","fontsize",4)
set(gca(),"x_location","middle");
