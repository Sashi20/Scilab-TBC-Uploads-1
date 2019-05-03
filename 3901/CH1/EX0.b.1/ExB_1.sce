clc
clear

//defining the given complex numbers
a=complex(2,3);
b=complex(-2,1);
c=complex(-2,-3);
d=complex(1,-3);

printf("sl \t abs_value \t angle(degree)\n");//printing the abs_value and phase of all complex numbers for polar form
printf("a \t %f \t %f   \n",abs(a),phasemag(a));
printf("b \t %f \t %f   \n",abs(b),phasemag(b));
printf("c \t %f \t %f   \n",abs(c),phasemag(c));
printf("d \t %f \t %f   \n",abs(d),phasemag(d));
