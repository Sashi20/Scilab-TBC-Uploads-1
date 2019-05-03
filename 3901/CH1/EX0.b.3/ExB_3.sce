clc
clear

format(6)
z1=complex(3,4);
z2=complex(2,3);

mul=z1*z2;
div=z1/z2;
mag_mul=abs(mul);      //finding magnitude of z1*z2
phas_mul=phasemag(mul);//finding angle of z1*z2 in degrees
mag_div=abs(div);      //finding magnitude of z1/z2
phas_div=phasemag(div);//finding angle of z1/z2 in degrees

printf("\nz1*z2 in cartesian form= %.1f+i%.1f, in polar form= %.1f/_%.1f degree\n",real(mul),imag(mul),mag_mul,phas_mul);//round-off error might be there
printf("\nz1/z2 in cartesian form= %.1f+i%.1f, in polar form= %.1f/_%.1f degree\n",real(div),imag(div),mag_div,phas_div);//round-off error might be there
