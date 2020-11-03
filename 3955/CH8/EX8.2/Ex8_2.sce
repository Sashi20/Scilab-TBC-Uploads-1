//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 8: MOMENTUM AND IMPULSE
//EX 8.2: A BALL HITS A WALL
clc;
clear;
m=0.4; //mass in kg
v1x=-30; //initial velocity in -x direction
v2x=20; //final velocity in +x direction
p1x=m*v1x; //initial momentum in -x direction
p2x=m*v2x; //final momentum in -x direction
Jx=p2x-p1x; //impulse in units N.s
delta_t=0.010; //time interval in sec
F_avx=Jx/delta_t; //Average impulsive force in N
mprintf('(a)Magnitude of impulse: %d N.s',Jx);
if Jx>0 then
    mprintf('\nDirection: +x axis')
    else mprintf('\nDirection: -x axis')
end
mprintf('\n(b)Magnitude of average impulsive force: %d N',F_avx)
if F_avx>0 then
    mprintf('\nDirection: +x axis')
    else mprintf('\nDirection: -x axis')
end
