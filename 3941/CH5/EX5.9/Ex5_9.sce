//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 5.9
//Finding the Harmonic Input Current of a Dc Converter.

clc;
clear;
Ia=100;                   //Average load current in Volts.
Le=0.3;                   //Inductance in milli Henry.
Ce=4500;                  //Capacitance in micro Farad.
f=350;                   //Frequency in Hertz.
k=0.5;                   //Duty cycle.
fo=1/(2*%pi*sqrt(Ce*10^-6*10^-3*Le));//Calculating the intial frequceny.
I1h=(Ia/%pi)*(sqrt(1-cos(2*%pi*k)));//Calculating the rms value of current.
I1s=(1/(1+(f/fo)^2))*I1h;           //Calculating the conveter generated harmonic current.
printf("\n\tThe rms value of current I1h is %0.2fA",I1h);
printf("\n\tThe fundamental component of converter-generated harmonic current in the supply I1s is %0.2fA",I1s);
