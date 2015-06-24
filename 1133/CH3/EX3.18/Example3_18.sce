//Example 3.18.
clc
disp("Given: A_v mid = 40, f_L = 100 Hz, f_H = 15 kHz and beta = 0.01")
avf=400/(1+(0.01*400))
format(3)
disp(avf,"  A_vf = A_v mid / 1+beta*A_v mid =")
flf=100/(1+(0.01*400))
disp(flf,"  f_Lf = f_L / 1+beta*A_v mid =")
fhf=(15)*(1+(0.01*400))  // in kHz
disp(fhf,"  f_Hf(in kHz) = f_H * (1+beta*A_v mid) =")
bw=75-0.02  // in kHz
format(6)
disp(bw,"  BW_f(in kHz) = f_Hf - f_Lf =")
