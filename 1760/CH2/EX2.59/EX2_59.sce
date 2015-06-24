    //EXAMPLE 2-59   PG NO-103
C1=15.5*10^3;
L=1000;
V=230;
PL1=10;            //active load power
PL2=6;            //active load power
QL1=7.5;        //reactive load power
QL2=8;     //reactiveload power
P=PL1+PL2;     //total active power
Q=QL1+QL2;      //total reactive power
AP=(P*P+Q*Q)^0.5;      //total apparent power
I=(AP*L)/V;          //TOTAL CURRENT
Ic=(C1/V);
Xc=V/Ic;
K=16;
C=1/(2*%pi*50*Xc);
I1=(L*K)/V;
disp(' total active power is = '+string(P)+' KW');   
disp(' total reactive power is = '+string(Q)+'K var ');   
disp(' total apparent power is = '+string(AP)+' KVA');   
disp(' total current(I) is = '+string(P)+' A');   
disp(' Ic is = '+string(P)+' A'); 
disp(' Xc is = '+string(Xc)+' ohm');    
disp(' capacitor is = '+string(C)+' F');   
disp(' current(I1) is = '+string(I1)+' A');    
