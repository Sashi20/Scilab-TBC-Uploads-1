clc
clear
close

omega_0=2*%pi*60; theta = [60 80 87]*(%pi/180);
omega = (0:0.5:1000)'; 
mag = zeros(3,length(omega));
s=poly(0,'s')
figure(1)
for m =1:length(theta)
   H=syslin('c',((s^2+omega_0^2)/(s^2+2*omega_0*cos(theta(m))*s +omega_0^2)));
   bode(H,10,100);
end

