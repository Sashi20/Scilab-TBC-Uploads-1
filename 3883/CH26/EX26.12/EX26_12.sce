//Chapter 26, Example 26.12, page 1179
clc
//Initialisation
hf=50                //short circuit current gain 
h1=0.04*10**3             //hr x hf x Zl 
h2=1.050                //ho x Zl
hi=1*10**3         //input impedance with output shorted 
hr=4*10**-4         //reverse voltage amplification with input open circuited 
ho=25*10**-6      //Output Admittance with input open circuited 
rz=1*10**3         //resistance in ohm

//Calculation
zi=hi-(h1/h2)                     //Input Impedance
zo=1/(ho-((hr*hf)/(hi+rz)))       //Output Impedance

//Result
printf("Input Impedance, Zi = %.1f ohm \n",zi)
printf("Output Impedance, Zo = %.2f kohm \n",zo/1000)
