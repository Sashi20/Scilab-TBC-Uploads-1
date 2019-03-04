//Example 9.5
clc;
x0=[2,2,2,2,1,1,1,1]
x1=fft(x0);
disp('X(K)=')
disp(x1);
x2=(real(x1).^2+imag(x1).^2).^(1/2)
disp('Magnitude:')
disp(x2)
x3=atan(imag(x1),real(x1))
disp('Phase:')
disp(x3)

