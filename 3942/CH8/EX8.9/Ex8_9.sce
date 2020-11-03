//SCILAB version: 5.5.2
//Operating system: Windows 7 Ultimate
clc;             //To clear the console screen
clear;           //To clear all the existing variables in the memory


//First fsolve7.sci file is executed for Part (a) calculation then fsolve8.sci is executed for Part (b) calculation.
exec('.\fsolve7.sci');
//Replace '.' present inside the 'exec('')' with the path to the folder location where the dependency fsolve7.sci file is saved.
exec('.\fsolve8.sci');
//Replace '.' present inside the 'exec('')' with the path to the folder location where the dependency fsolve8.sci file is saved.


//Let '1','2' and '3' be same naming notations as that of FIGURE 8-49 page number 362
//Given data
D=1.5                   //D is diameter of the copper pipe in 'cm'
P1=200                  //P1 is pressure at the inlet in 'kPa gage'
K_L_shower=12           //K_L_shower is the loss co-efficient of shower
K_L_reservoir=14        //K_L_reservoir is the loss co-efficient of reservoir
n_tee_shower=1          //n_tee_shower is the number of tee in shower-inlet pipe
n_elbow_shower=2        //n_elbow_shower is number of elbow in the shower-inlet pipe
n_valve_shower=1        //n_valve_shower is number of valve in the shower-inlet pipe
n_tee_reservoir=1       //n_tee_reservoir is number of tee in the reservoir-inlet pipe
n_valve_reservoir=1     //n_valve_reservoir is number of valve in the reservoir-inlet pipe
n_elbow_reservoir=1     //n_elbow_reservoir is number of elbow in the reservoir-inlet pipe
Z3=1                    //Z3 is the elevation of the shower in 'm'
Z2=2                    //Z2 is the elevation of the reservoir in 'm'
Z1=0                    //Z1 is the elevation for the inlet location in 'm'
L_shower=11             //L_shower is the total length of the pipe connecting the inlet and the shower in 'm'
Length1=5               //m
Length2=6               //m
Length3=1               //m


//Unit conversion
P1=(P1*1000)+101325     //Conversion from 'kPa gage' to 'Pa absolute'
D=D/100                 //Conversion from 'cm' to 'm'


//Assumption
rho=998                 //rho is density of the water in 'kg/m3'
Mu=1.002E-3             //Mu is dynamic viscosity of the water in 'kg/(m s)'
Nu=1.004E-6             //Nu is kinematic viscosity of the water in 'm2/s'
Epsilon=1.5E-6          //Epsilon is equivalent roughness value in 'm'
K_L_tee=0.9             //K_L_tee is the loss co-efficient of tee
K_L_elbow=0.9           //K_L_elbow is the loss co-efficient of elbow
K_L_valve=10            //K_L_valve is the loss co-efficient of valve
P2=101325               //P2 is pressure at the reservoir in 'Pa'
P3=101325               //P3 is pressure at the shower in 'Pa'
V1=0                    //V1 is velocity of water at the inlet in 'm/s'
V2=0                    //V2 is velocity of water in the reservoir in 'm/s'
V3=0                    //V3 is velocity of water coming from the shower in 'm/s'
Alpha1=1.03             //Alpha1 is the kinetic energy correction factor(Assuming flow to be turblent)
Alpha2=1.03             //Alpha1 is the kinetic energy correction factor(Assuming flow to be turblent)
Alpha3=1.03             //Alpha1 is the kinetic energy correction factor(Assuming flow to be turblent)
g=9.81                  //g is acceleration due to gravity in 'm/s2'
h_pump_u=0              //h_pump_u is the useful pump head delivered to the water in 'm'
h_turbine_e=0           //h_turbine_e is the turbine head extracted from the water in 'm'


//Part (a)
//Calculation
Sigma_K_L_shower=(n_tee_shower*K_L_tee)+(n_elbow_shower*K_L_elbow)+(n_valve_shower*K_L_valve)+(K_L_shower)
//Sigma_K_L_shower is the total loss coefficient in shower-inlet pipeline
h_L=(P1/(rho*g))-(P2/(rho*g))+(Alpha1*V1^2/(2*g))-(Alpha2*V2^2/(2*g))+Z1-Z2+h_pump_u-h_turbine_e //h_l is head loss in 'm'
R=D/2                   //R is radius of the pipe in 'm'
A=%pi*R^2               //A is area of the pipe in 'm2'
Epsilon_by_D=Epsilon/D  //Epsilon_by_D is the roughness factor of the pipe 
x0=[0.0001 0.01 5 20000]//Guess values for calculating actual values using fsolve function
x=fsolve(x0,fsolve7)    //fsolve function calling statement


//Display of result
mprintf('\n(a) Flow rate of water through the shower head is %.5f m3/s or %.2f L/s.',x(1),x(1)*1000)


//Part (b)
//Calculation
Sigma_K_L_reservoir=(n_tee_reservoir*K_L_tee)+(n_elbow_reservoir*K_L_elbow)+(n_valve_reservoir*K_L_valve)+(K_L_reservoir)
//Sigma_K_L_reservoir is the total loss coefficient in reservoir-inlet pipeline
h_L_3=(P1/(rho*g))-(P3/(rho*g))+(Alpha1*V1^2/(2*g))-(Alpha3*V3^2/(2*g))+Z1-Z3+h_pump_u-h_turbine_e
//h_L_3 is head loss in the reservoir branch in 'm'
y0=[0.001 0.001 0.0001 0.01 0.01 0.01 3 3 3 10000 10000 10000]  //Guess values for calculating actual values using fsolve function
y=fsolve(y0,fsolve8)                                            //fsolve function calling statement
Reduction=(x(1)-y(2))*100/x(1)                                  //Reduction is the reduction in the water flow rate in '%'


//Display of result
mprintf('\n(b) Flushing of toilet reduces flow rate through the shower by %d percent from %.2f to %.2f L/s.',Reduction,x(1)*1000,y(2)*1000)
//The answers vary due to round off error
