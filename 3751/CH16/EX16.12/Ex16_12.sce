//Fluid Systems - By Shiv Kumar
//Chapter 16- Hydraulic Power and Its Transmissions
//Example 16.12
//To Calculate the Diameters of Fixed ram and Sliding Cylinder.
      clc
      clear

//Given Data:-
          p1=50;          //Pressure Intensity of Low Pressure Liquid,  bar
          p2=150;         // Pressure Intensity of High Pressure Liquid,  bar
          Capacity=0.025;       //Capacity of Intensifier, m^3
           l=1.25;            //Stroke Length, m

//Computations:-
      
         D2=sqrt(Capacity/((%pi/4)*l))*1000;        //mm
         D1=sqrt((p2/p1)*D2^2);        //mm

//Results:-
         printf("Diameter of Fixed Cylinder, D2=%.2f mm\n",D2)       //The answer vary due to round off error
        printf("Diameter of Sliding Ram, D1=%.2f mm\n",D1)       //The answer vary due to round off error


