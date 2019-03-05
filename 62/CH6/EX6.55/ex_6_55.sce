x=[0 1 2 3];
X=fft(x,-1);
disp(X,"DFT is X(k)=")
x=fft(X,1);
disp(round(x),"IDFT is x[n]=")