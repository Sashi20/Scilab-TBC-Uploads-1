clc
clear
//Initialization of variables
disp("From psychrometric charts at 50 F and 80 F,")
va1=13 //ft^3/lbm dry air
va2=13.88 //ft^3/lbm dry air
flow=2000 //cfm
//calculations
ma1= flow/va1
ma2=flow/va2
disp("The two initial states have been multiplied by 108/262 and distance 2-3 is located")
t=62.5// F
phi=0.83 //percent
//results
printf("humidity = %.2f ",phi)
printf("\n Temperature = %.1f F",t)
