     //EXAMPLE 5-3 PG NO-296
TR1=(90/14);                      //TOTAL RESISTANCE
R1=8;
R2=6;
R3=3;
E1=10;                            //VOLTS
IR11=E1*(1/TR1);                             //Current in resistance one
IR12=IR11*(R1/(R1+R2));           //Current in resistance Two
IR13=IR11*(R2/(R1+R2));          //Current in resistance one
IR14=0;
TR2=10;                      //TOTAL RESISTANCE
IR23=TR2/E1;
IR21=IR23*(R2/(R2+R3));
IR22=IR23*(R3/(R2+R3));
IR24=0;
IR34=(10/12);
IR32=TR2/(R2+(R3*R1/11));
IR31=IR32*(R1/(R1+R3));
IR33=IR32*(R3/(R1+R3));
IR1=(14-6-8)/9;
IR2=(8+3-11)/9;
IR3=(6+3)/9-1;
IR4=IR34+0+0;
disp('i) CURRENT IN RESISTANCE ONE is   =  '+string (IR11)+'V ');
disp('i) CURRENT IN RESISTANCE ONE is   =  '+string (IR12)+'V ');
disp('i) CURRENT IN RESISTANCE ONE is   =  '+string (IR13)+'V ');
disp('i) CURRENT IN RESISTANCE ONE is   =  '+string (IR14)+'V ');
disp('i) CURRENT IN RESISTANCE ONE is   =  '+string (IR21)+'V ');
disp('i) CURRENT IN RESISTANCE ONE is   =  '+string (IR22)+'V ');
disp('i) CURRENT IN RESISTANCE ONE is   =  '+string (IR23)+'V ');
disp('i) CURRENT IN RESISTANCE ONE is   =  '+string (IR24)+'V ');
disp('i) CURRENT IN RESISTANCE ONE is   =  '+string (IR31)+'V ');
disp('i) CURRENT IN RESISTANCE ONE is   =  '+string (IR32)+'V ');
disp('i) CURRENT IN RESISTANCE ONE is   =  '+string (IR33)+'V ');
disp('i) CURRENT IN RESISTANCE ONE is   =  '+string (IR34)+'V ');
disp('i) CURRENT IN RESISTANCE ONE is   =  '+string (IR1)+'V ');
disp('i) CURRENT IN RESISTANCE TWO is   =  '+string (IR2)+'V ');
disp('i)CURRENT IN RESISTANCE THREE  is   =  '+string (IR3)+'V ');
disp('i) CURRENT IN RESISTANCE FOUR is   =  '+string (IR4)+'');
