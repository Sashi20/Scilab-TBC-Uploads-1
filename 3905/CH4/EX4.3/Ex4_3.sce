//Example 4.3, Page Number 200
//A Four-Input Complimentary CMOS NAND Gate
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
//Parameter Values for 1.2µm CMOS process
lamda_NMOS=0.06            //Channel modulation in volt inverse(1/V)
lamda_PMOS=0.19             //Channel modulation in volt inverse(1/V)

//Outputs
Area_PMOS=108*(lamda_PMOS^2)                   //Area of PMOS in micro metre square(µm^2)
Perimeter_PMOS=24*lamda_PMOS                   //Perimeter of PMOS in micro metre(µm)
Area_NMOS=37*(lamda_NMOS^2)                   //Area of NMOS in micro metre square(µm^2)
Perimeter_NMOS=27*lamda_NMOS                   //Perimeter of NMOS in micro metre(µm)

//Results
mprintf("\nArea of PMOS: %.2f µm^2",Area_PMOS);
mprintf("\nPerimeter_PMOS: %.2f µm",Perimeter_PMOS);
mprintf("\nArea of NMOS: %.2f µm^2",Area_NMOS);
mprintf("\nPerimeter_NMOS: %.2f µm",Perimeter_NMOS);


//Outputs 
//Area of PMOS: 3.90 µm^2
//Perimeter_PMOS: 4.56 µm
//Area of NMOS: 0.13 µm^2
//Perimeter_NMOS: 1.62 µm

