//Example 6.3, Page Number 346
//ECL SR Flip-Flop
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
Vbe_on=0.7                  //Forward Base-Emitter voltage on volts(V)
Vbe_sat=0.8                  //Saturated Base-Emitter voltage on volts(V)
Vce_sat=0.1                  //Saturated Collector-Emitter voltage on volts(V)
beta_f=100                       //Forward current gain
Vcc=0                          //Supply voltage in volts(V)
Vee=-3.5                      //Emmiter voltage in volts(V)
//Collector current is set to 0.5mA
Ic1=0.5*(10^-3)                  //Collector current in amperes(A)

//Outputs
Vb1=Vcc-Vbe_on              //Base voltage of Q1 in volts(V)
Ve1=Vb1-Vbe_on              //Emitter voltage of Q1 in volts(V)
Re=(Ve1-Vee)/Ic1             //Emitter resistance in ohms(Ω)
//Solving the below equations gives relation between Re and Rc:
//Vc1=Vcc-(Ic1*Rc)
//Vq_compliment=Vc1-Vbe_on
//Vq_compliment=Vcc-(Rc/Re)*(Vcc-(2*Vbe_on)-Vee)-Vbe_on
Rc=Re/4.2                    //Collector resistance in ohms(Ω)
//The absolute values of Rc,Re and Rb are determined by desired current levels and the required transient response time

//Results
mprintf("\nEmitter resistance Re: %.1f ohms(Ω)",Re);
mprintf("\nCollector resistance Re: %.1f ohms(Ω)",Rc);

//Outputs
//Emitter resistance Re: 4200.0 ohms(Ω) (or) 4.2kΩ
//Collector resistance Re: 1000.0 ohms(Ω) (or) 1kΩ


