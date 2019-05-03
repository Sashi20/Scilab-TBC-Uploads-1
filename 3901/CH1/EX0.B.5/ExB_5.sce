clc
clear

w=input("enter the value of omega:  ");//initialising w using value from users
X=(2+%i*w)/(3+%i*w*4);

rl_X=real(X);    //finding real part
img_X=imag(X);  //finding imaginary part
mag_X=abs(X);   //finding absolute part
phas_X=phasemag(X);//finding angle in degree

printf("\nX(w) in-\ncartesian form: real part= %f  and imaginary part= %f\n\n",rl_X,img_X);
printf("polar form    : magnitude= %f  and angle= %f degrees\n",mag_X,phas_X);
