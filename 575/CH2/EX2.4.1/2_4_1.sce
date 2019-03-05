clc
//this program is used to calculate weight of water at different places
exec('241.sci')
mass=volume*density;
printf("mass of the water = volume x density=%f lbm",mass)
printf(" \n At sealevel, g=32.174 ft/s^2")
g=32.174;
weight=mass*g/32.174;
printf(" \n weight at sealevel= %f lbf \n",weight)
printf(" \n At denver, g=32.139 ft/s^2")
g=32.139;
weight=mass*g/32.174;
printf("\n weight at denver= %f lbf",weight)
//the division with 32.174 is to convert lbm.ft/s^2 to lbf