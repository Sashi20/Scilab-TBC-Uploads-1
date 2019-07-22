//Example 9.1, Page Number 395
//Strain Gage Resistance Changes
clc;

//Inputs
R=120                    //Strain gage in ohms
F=2                //Gage factor
strain=100*(10^-6)           //Strain experienced by gage 
 
//Outputs
R_change=R*F*strain             //Resistance of the gage change from the unloaded state to the loaded state in ohms

//Results
mprintf("Resistance of the gage change from the unloaded state to the loaded state: %.5f ohms\n",R_change);


//Outputs
//Resistance of the gage change from the unloaded state to the loaded state: 0.02400 ohms

