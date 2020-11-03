
//Power Electronics Devices, Circuits, and Applications.By M.H.Rashid
//Publisher : Pearson Education.
//Edition : Fourth.
//Scilab Version : 6.0.2     ;OS : Windows.
                                                                            
//Example : 17.1
//Plot the Instantaneous Junction Temperature

clc;
clear
P1=800;                     //Power in wats.
P3=1200;                    //Power in watts.
P5=600;                     //Power in watts.
t=1;                        //Time in milli seconds.
Z_td=0.035;                //Temperature rise in degree celsius per watts.
Z_te=0.025;                //Temperature rise in degree celsius per watts.
//Calculating the junction temperature rise.
del_TJ_t1=Z_td*P1;
del_TJ_t2=del_TJ_t1-(Z_te*P1);
del_TJ_t3=del_TJ_t2+(Z_td*P3);
del_TJ_t4=del_TJ_t3-(Z_te*P3);
del_TJ_t5=del_TJ_t4+(Z_td*P5);
del_TJ_t6=del_TJ_t5-(Z_te*P5);
printf("\nThe junction temperature rise are;");
printf("\n\tdel_TJ(t=1ms) = %0.0f°C",del_TJ_t1);
printf("\n\tdel_TJ(t=1.5ms) = %0.0f°C",del_TJ_t2);
printf("\n\tdel_TJ(t=2.5ms) = %0.0f°C",del_TJ_t3);
printf("\n\tdel_TJ(t=3ms) = %0.0f°C",del_TJ_t4);
printf("\n\tdel_TJ(t=4ms) = %0.0f°C",del_TJ_t5);
printf("\n\tdel_TJ(t=4.5ma) = %0.0f°C",del_TJ_t6);
//Ploting the values of junction temperature rise.
t1=[0 1 1.5 2.5 3 4 4.5];                         //Time in ms
del_TJ=[0 del_TJ_t1 del_TJ_t2 del_TJ_t3 del_TJ_t4 del_TJ_t5 del_TJ_t6];//Junction temperature rise in °C
subplot(1,1,1);
plot(t1,del_TJ);
xlabel("Time (t) in milli seconds");
ylabel("Temperature rise (del_TJ) in degree Celcius");
title("Plot of Juntion Temperature rise with time");
