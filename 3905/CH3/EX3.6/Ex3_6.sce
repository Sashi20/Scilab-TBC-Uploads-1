//Example 3.6, Page Number 131
//Capacitance of a 1.2µm CMOS Inverter
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
//Considering a minimum size symmetrical CMOS inverter with its parameters.
Vdd=5               //Supply voltage in volts(V)
lamda=0.6*(10^-6)            //Channel modulation in metres(m)

//Outputs
drain_area_NMOS=4*4*(lamda^2)           //Drain area formed by metal-diffusion contact of NMOS in metre square(m^2)
rect_contact_gate_NMOS=3*(lamda^2)        //Rectangle area between contact and gate of NMOS in metre square(m^2)
total_area_NMOS=drain_area_NMOS+rect_contact_gate_NMOS    //Total area of layers of NMOS in metre square(m^2)
perimeter_drain_NMOS=15*lamda             //Perimeter of drain in NMOS in metres(m)
sidewall_area_NMOS=19*(lamda^2)           //sidewall area formed by metal-diffusion contact of NMOS in metre square(m^2)
perimeter_sidewall_NMOS=15*lamda             //Perimeter of sidewall in NMOS in metres(m)
total_area_PMOS=45*(lamda^2)   //Total area of layers of PMOS in metre square(m^2)
perimeter_drain_PMOS=19*lamda             //Perimeter of drain in PMOS in metres(m)
sidewall_area_PMOS=45*(lamda^2)           //sidewall area formed by metal-diffusion contact of PMOS in metre square(m^2)
perimeter_sidewall_PMOS=19*lamda             //Perimeter of sidewall in PMOS in metres(m)

//Results
mprintf("\nTotal area of layers of NMOS : %.14f (metres^2)",total_area_NMOS);
mprintf("\nPerimeter of drain in NMOS: %.7f metres",perimeter_drain_NMOS);
mprintf("\nsidewall area formed by metal-diffusion contact of NMOS sidewall_area_NMOS: %.14f metres",sidewall_area_NMOS);
mprintf("\nPerimeter of sidewall in NMOS perimeter_sidewall_NMOS: %.7f metres",perimeter_sidewall_NMOS);
mprintf("\nTotal area of layers of PMOS total_area_PMOS: %.14f (metres^2)",total_area_PMOS);
mprintf("\nPerimeter of drain in PMOS perimeter_drain_PMOS: %.7f metres",perimeter_drain_PMOS);
mprintf("\nsidewall area formed by metal-diffusion contact of PMOS sidewall_area_PMOS: %.14f (metres^2)",sidewall_area_PMOS);
mprintf("\nPerimeter of sidewall in PMOS perimeter_sidewall_PMOS: %.7f metres",perimeter_sidewall_PMOS);


//Outputs
//Total area of layers of NMOS total_area_NMOS : 0.00000000000684 (metres^2) *(or) 6.84µm^2
//Perimeter of drain in NMOS perimeter_drain_NMOS: 0.0000090 metres (or) 9.00µm
//sidewall area formed by metal-diffusion contact of NMOS: 0.00000000000684 metres (or) 6.84µm^2
//Perimeter of sidewall in NMOS perimeter_sidewall_NMOS: 0.0000090 metres (or) 9.0µm
//Total area of layers of PMOS total_area_PMOS: 0.00000000001620 (metres^2) (or) 16.20µm^2
//Perimeter of drain in PMOS perimeter_drain_PMOS: 0.0000114 metres (or) 11.40µm
//sidewall area formed by metal-diffusion contact of PMOS sidewall_area_PMOS: 0.00000000001620 (metres^2) (or) 16.20µm^2 
//Perimeter of sidewall in PMOS perimeter_sidewall_PMOS: 0.0000114 metres (or) 11.40µm
