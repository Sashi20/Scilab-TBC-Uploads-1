//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
H = 5;    //(m)(Height of the tunnel)
u = 60;   //(m/s)(Velocity of projection)
g = 9.8;  //(m/s^2)(Accn due to Gravity)

//Let alpha = Angle of projection
//Using H = (u^2 * (sind(alpha))^2)/(2*g);
alpha = asind(sqrt((H*2*g)/(u^2)));
printf("Angle of projection = %.2f degrees\n",alpha);

//Greatest possible range:
R = (u^2 * sind(2*alpha))/g;    //(m)
printf("Greatest possible range = %.2f m",R);    //The answers vary due to round off error
