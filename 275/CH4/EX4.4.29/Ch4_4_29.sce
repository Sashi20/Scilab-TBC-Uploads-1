clc
Vt=10; //For exact value, refer to textbook and change accordingly 
disp("Example 4.29")
printf("\n")
disp("Calculate suitable values of R1,Rp,R2 for SCR in circuit Fig 4.12")
printf("Given\n")
printf("Resistance are in ohms \nCurrent are in Ampere \n Voltage sources are in volt\n")
//gate current
Ig=600*10^-6
//gate trigger voltage
Vg=0.7
Vd=0.7
//supply voltage
Vs=230
//peak value of supply voltage
Vm=sqrt(2)*Vs
//supply voltage at angle 8deg
Vs1=Vm*sin(8*%pi/180)
//supply voltage at angle 90deg
Vs2=Vm*sin(90*%pi/180)
//to trigger SCR at 10deg moving contact of Rp is at top
//from circuit
VR1=Vs1-Vg
//choose I1min&gt;&gt;Ig
I1min=6*10^-3
R1=VR1/I1min
//since Ig&lt;<i1min, current="" through="" rp="" &="" r2="" is="" i1min="" rpplusr2="Vg/I1min" to="" trigger="" scr="" at="" 90deg="" moving="" contact="" of="" bottom="" vr2="Vt" i1="Vs2/(R1+RpPLUSR2)" printf("resistance="" r1="" %f="" ohm="" \n",r1)="" \n",r2)="" \n",rp)="" <="" div=""></i1min,>