// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 17-3
//Degrees of phase between standing wave loop and adjacent node is to be found

//Computations
n_loops=2; //number of loops in standing-wave complete cycle
n_nodes=2; //number of nodes in standing-wave complete cycle
phi_cycle=360; //phase in a complete cycle, degrees

phi=phi_cycle/(n_loops+n_nodes); //phase between loop and node, degrees

printf("A standing-wave loop is %d degrees from adjacent node.",phi)
