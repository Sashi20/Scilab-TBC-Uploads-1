//Example 2.6, Page Number 38
//AC Signal Parameters
clc;

//Inputs
//V(t)=5.sin(t−1)              Input Voltage in volts
 
//Outputs
Vm=5.0     //Signal amplitude in volts
w=1         //Signal radian frequency in radian per second
f=((w)/(2*3.14))          //Signal frequency in hertz
phi=-1          //Phase angle of the given input signal in radian
phi_deg=((180)/(3.14)*(phi))       //Phase angle in degrees

//Results
mprintf("Signal amplitude: %.5f volts\n",Vm);
mprintf("Signal radian frequency: %.5f rad/sec\n",w);
mprintf("Signal frequency: %.5f hertz\n",f);
mprintf("Phase angle of the given input signal: %.5f radians\n",phi);
mprintf("Phase angle: %.5f degrees\n",phi_deg);

//Outputs
//Signal amplitude: 5.00000 volts
//Signal radian frequency: 1.00000 rad/sec
//Signal frequency: 0.15924 hertz
//Phase angle of the given input signal: -1.00000 radians
//Phase angle: -57.32484 degrees

