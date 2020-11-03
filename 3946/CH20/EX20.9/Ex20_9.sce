//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
u1 = 5;    //(m/s)(Velocity of projection of first particle)
alpha1 = 60;    //(Degrees)(Angle of projection of first particle with the horizontal)
alpha2 = 45;   //(Degrees)(Angle of projection of second particle with the horizontal)
g = 9.8;       //(m/s^2)(Accn due to Gravity)

//Let u2 = Velocity of projection of the second particle.
//(a)Velocity of the second particle for equal horizontal range:
//Using R = (u^2 * sind(2*alpha))/g;
//For equal horizontal range:
//(u1^2*sind(2*alpha1))/g = (u2^2*sind(2*alpha2))/g
u2 = sqrt(u1^2 * (sind(2*alpha1)/sind(2*alpha2)));  //(m/s)
printf("Velocity of projection of the second particle = %.2f m/s\n",u2);

//(b)Velocity of the second particle for equal maximum height:
//H = (u^2 * (sind(alpha))^2)/(2*g);
//For equal maximum height:
//(u1^2 * (sind(alpha1))^2)/(2*g) = (u2^2 * (sind(alpha2))^2)/(2*g);
u2 = sqrt(u1^2 * (((sind(alpha1))^2)/((sind(alpha2))^2)));
printf("Velocity of the second particle for equal maximum height = %.2f m/s\n",u2);

//(c)Velocity of the second particle for equal time of flight:
//t = (2*u*sind(alpha))/g;    (Time of flight)

//For equal time of flight:
//(2*u1*sind(alpha1))/g = (2*u2*sind(alpha2))/g;
u2 = u1 * (sind(alpha1)/sind(alpha2));     //(m/s)
printf("Velocity of the second particle for equal time of flight = %.2f m/s",u2);
