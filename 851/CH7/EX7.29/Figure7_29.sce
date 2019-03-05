//clear//
//Caption:Power Spectra of BPSK and BFSK signals
//Figure7.29:Comparison of Power Spectral Densities of BPSK
//and BFSK
clc;
rb = 2;
Eb = 1;
f = 0:1/100:8/rb;
Tb = 1/rb;  //Bit duration
for i= 1:length(f)
   if(f(i)==(1/(2*Tb)))
     SB_FSK(i)=Eb/(2*Tb); 
   else
     SB_FSK(i) = (8*Eb*(cos(%pi*f(i)*Tb)^2))/((%pi^2)*(((4*(Tb^2)*(f(i)^2))-1)^2));
   end
     SB_PSK(i)=2*Eb*(sinc(f(i)*Tb)^2);
end
a=gca();
plot(f*Tb,SB_FSK/(2*Eb))
plot(f*Tb,SB_PSK/(2*Eb))
poly1= a.children(1).children(1);
poly1.foreground = 6;
xlabel('Normalized Frequency ----&gt;')
ylabel('Normalized Power Spectral Density---&gt;')
title('PSK Vs FSK Power Spectra Comparison')
legend(['Frequency Shift Keying','Phase Shift Keying'])
xgrid(1) 
//Result
//Enter the bit rate in bits per second:2
//Enter the Energy of bit:1