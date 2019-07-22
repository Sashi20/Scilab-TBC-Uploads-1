//Example 3.2, Page Number 83
//Zener Regulation Performance
clc;

//Inputs
Vin_min=20          //Minimum input voltage in volts
Vin_max=30             //Maximum input voltage in volts
Vz=15                 //Zener breakdown voltage in volts
P_dissp=1              //Maximum power rating of zener diode in watts
Rd=14              //Zener dynamic resistance in ohms
Delta_Vin=(Vin_max-Vin_min)             //Input voltage range in volts

//Outputs
//To limit the maximum power dissipation to less than 1W, the current through the diode must be limited to:
Iz_max=((P_dissp)/(Vz))            //Maximum zener current through zener diode in amperes
R_min=((Vin_max-Vz)/(Iz_max))         //Minimum load resistance for keeping the zener diode in breakdown region in ohms 
//The closest acceptable standard resistance value is 240 
R_min_practical=240                    //Minimum load resistance for keeping the zener diode in breakdown region in ohms 
Delta_Vout=(((Rd)/(Rd+R_min_practical))*(Delta_Vin))     //Output voltage range in volts
//When zener diode is in breakdown region Vout=Vz.
Volt_reg=((Delta_Vout)/(Vz))*100         //Voltage regulation percentage

//Results
mprintf("Maximum zener current through zener diode: %.5f ampere\n",Iz_max);
mprintf("Minimum load resistance for keeping the zener diode in breakdown region: %.5f ohms\n",R_min);
mprintf("Output voltage range: %.5f volts\n",Delta_Vout);
mprintf("Voltage regulation percentage: %.5f \n",Volt_reg);

//Outputs
//Maximum zener current through zener diode: 0.06667 ampere
//Minimum load resistance for keeping the zener diode in breakdown region: 225.00000 ohms
//Output voltage range: 0.55118 volts
////Voltage regulation percentage: 3.6745
