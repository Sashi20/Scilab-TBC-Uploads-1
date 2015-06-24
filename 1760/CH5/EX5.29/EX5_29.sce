    //EXAMPLE 5-29    PG NO 323
V1=5;                     //Voltage
V2=0.05;                  //Voltage
R1=100;                    //Resistance
R2=1000;                  //Resistance
R3=85;
R4=880;;
I1=0.00266;              //Current
I2=0.02676;              //Current
Va=V1-R1*I2;
Vb=V1-R2*I1;
VTH=Va-Vb;
RTH=((R1*R3)/(R1+R3))+(R2*R4)/(R2+R4)
I=(0.016)/(RTH+20);
disp('i) Voltage (Va) is   in polar  =  '+string (Va) +'  V ');
disp('i) Voltage (Vb) is   in polar  =  '+string (Vb) +'  V ');
disp('i) Voltage (VTH) is   in polar  =  '+string (VTH) +'  V ');
disp('i) Resistance (RTH) is   in polar  =  '+string (RTH) +'  ohms ');
disp('i) Current (I) is     =  '+string (I) +'  A ');
