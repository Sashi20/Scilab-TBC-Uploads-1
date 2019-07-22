//Example 9.2,Page Number 413
//Thermocouple Configuration with Nonstandard Reference
clc;

//Inputs
//A standard two-junction thermocouple configuration is being used to measure the temperature in a wind tunnel.
//The reference junction is held at a constant temperature of 10 Celsius.
//We have only a thermocouple table referenced to 0 Celsius .
Junc_Temp=[0;10;20;30;40;50;60;70;80;90;100]               //Junction temperature in celsius
V_out=[0;0.507;1.019;1.536;2.058;2.585;3.115;3.649;4.186;4.725;5.268]              //Output voltages in millivolts
V_100_to_0=5.268*(10^-3)                   //Voltage measured for a temperature of 100 Celsius relative to a reference junction at 0 Celsius in volts
V_10_to_10=0.507*(10^-3)                   //Voltage measured for a temperature of 10 Celsius relative to a reference junction at 10 Celsius in volts
 
//Outputs
//By law of intermediate temperature:
V_100_to_10= (V_100_to_0)-(V_10_to_10)        //Voltage measured for a temperature of 100 Celsius relative to a reference junction at 10 Celsius in volts
  
//Results
disp('Junction temperature in celsius list')
disp(Junc_Temp)
disp('Output voltages in millivolts list')
disp(V_out)

mprintf("Voltage measured for a temperature of 100 Celsius relative to a reference junction at 10 Celsius: %.5f volts\n",V_100_to_10);


//Outputs
//Junction temperature in celsius list          Output voltages in millivolts list

//    0                                                      0                   
//   10                                                    0.507                    
//   20                                                    1.019                  
//   30                                                    1.536                  
//   40                                                    2.058                   
//   50                                                    2.585                  
//   60                                                    3.115                  
//   70                                                    3.649                  
//   80                                                    4.186                   
//   90                                                    4.725                   
//  100                                                    5.268                     
//Voltage measured for a temperature of 100 Celsius relative to a reference junction at 10 Celsius: 0.00476 volts (or) 4.76 millivolts

