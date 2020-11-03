//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
mA = 4;       //(kg)(Mass of body A)
mB = 5;       //(kg)(Mass of body B)
mC = 15;      //(kg)(Mass of body C)
mu = 0.4;      //(Coefficient of friction)
g = 9.8;      //(m/s^2)(Accn due to Gravity)
alpha = 30;   //(Degrees)
//(i)Acceleration of the bodies:
//Let a = Acceleration of the bodies.
//TA = Tension in the string connected with body A.
//TB = Tension in the string connected with body B.

//Normal reaction on the horizontal surface due to body A:
RA = mA * g;        //(N)

//Frictional Force:
FrA = mu*RA;        //(N)

//Normal reaction on the inclined surface due to body B:
RB = mB * g * cosd(alpha);         //(N)

//Frictional Force:
FrB = mu*RB;                        //(N)

//Considering the motion of body A:
//Resultant force = TA - 15.68        -(1)

//Force acting on it = 4*a            -(2)

//Equating (1) and (2):
//TA = 4*a + 15.68                   -(3)

//Considering the motion of the body B:
//Resultant force = TB + 7.53         -(4)

//Force acting on it = 5*a            -(5)

//equating (4) and (5):
//TB = 5*a - 7.53                     -(6)

//Considering the motion of the body C:
//Resultant force = 147 - (TA + TB)    -(7)

//Force acting on it = 15*a            -(8)

//Equating (7) and (8):
//147 - (TA + TB) = 15*a
//Substituting the values of TA and TB   ;
a = 138.85/24;            //(m/s^2)
printf("Acceleration of the bodies = %.2f m/s^2\n",a);    //The amswers vary due to round off error

//(ii)Tension in the two strings:
//Substituting the value of a in equation (3):
TA = 4*a + 15.68;        //(N)
printf("Tension in the string connected with body A = %.2f N\n",TA);     //The answers vary due to round off error

//Substituting the value of a in equation (6):
TB = 5*a - 7.53;        //(N)
printf("Tension in the string connected with body B = %.2f N",TB);    //The answers vary due to round off error
