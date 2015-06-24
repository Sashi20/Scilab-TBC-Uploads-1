//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 13

disp("CHAPTER 2");
disp("EXAMPLE 13");

//given
//load of impedance 1+j.1 ohm connected AC Voltage
//AC Voltage represented by V=20.sqrt(2).cos(wt+10) volt

//to find
//current in form of i=Im.sin(wt+phi) A
// real power 

//Equations to be used
//real Power pr=Vrms.Irms.cos (phi)
//             =(Vm/sqrt(2)).(Im/sqrt(2)).cos(phi)
// apparent power pa=Vrms.Irms
//		    =(Vm/sqrt(2)).(Im/sqrt(2))
//
//VARIABLE INITIALIZATION
z1=1+(%i*1);                    //impedance in rectangular form in Ohms
v=20*sqrt(2);                   //amplitude of rms value of voltage in Volts

//SOLUTION
function [z,angle]=rect2pol(x,y);
z=sqrt((x^2)+(y^2));            //z is impedance & the resultant of x and y
angle=atan(y/x)*(180/%pi);      //to convert the angle from radians to degrees
endfunction;

//solution (i)
[z,angle]=rect2pol(1,1); 
v=v/sqrt(2);
angle_v=100;                    //v=(20/sqrt(2))*sin(ωt+100)
I=v/z;                          //RMS value of current
angle_I=angle_v-angle;
Im=I*sqrt(2);
disp(sprintf("(i) The current in load is i = %d sin(ωt+%d) A",Im,angle_I));

//solution (ii)
pr=(v/sqrt(2))*(I*sqrt(2))*cos(angle*(%pi/180));
disp(sprintf("(ii) The real power is %4.0f W",pr));

//solution (iii)
pa=(v/sqrt(2))*(I*sqrt(2));
disp(sprintf("(ii) The apparent power is %6.2f VAR",pa));

//END



