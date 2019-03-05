clc;
exec('number_of.sci');
n=4;        //four variable kmap
k=[1 1 0 1;
   0 1 1 1;
   0 1 1 0;
   0 0 0 0];
k(:,:,2)=zeros(n,n);     //temporary matrix to know whether a element is paired or not
//declaring notations to display output
var=['y' 'z' 'w' 'x'];
p1=['y''z''' 'y''z' 'yz' 'yz'''];
p2=['w''x''';'w''x';'wx';'wx'''];
//minimum redundant elements accepted while pairing
cmn4=4;
cmn2=2;
temp=1;
disp("The minimal ecpression of the given Kmap ");
disp(k(:,:,1));
disp("is :");
disp(" ")
//16 cells
for i=1:n
    for j=1:n
        if(k(i,j)~=1)
            temp=0;
            break;
         end
    end
end
printf('f=');
if(temp==1)
    printf("1");
    abort;
end
//8 cells
z1=ones(2,4);
temp1=['00' '01' '11' '10'];
temp2=temp1';
for i=1:n
        if(i==4)
            t=1;
        else
            t=i+1;
        end
        z=[k(i,:,1);k(t,:,1)];
        if(z==z1)
            k(i,:,2)=[1 1 1 1];
            k(t,:,2)=[1 1 1 1];
            a=strsplit(temp2(i,1));
            b=strsplit(temp2(t,1));
            c=strcmp(a,b);
            for in=1:max(size(c))
                if(c(in)==0 &amp; a(in)=='0')
                    printf('%s''',var(in));
                    printf('+');
                    break;
                 else
                     if(c(in)==0 &amp; a(in)=='1')
                        printf(var(in));
                        printf('+');
                        break;
                      end
                 end
            end
        end
end
z2=ones(4,2);
for j=1:n
    if(j==4)
        t=1;
    else
        t=j+1;
    end
    z=[k(:,j,1) k(:,t,1)];
    if(z==z2)
        k(:,j,2)=[1;1;1;1];
        k(:,t,2)=[1;1;1;1];
        a=strsplit(temp1(1,j));
        b=strsplit(temp1(1,t));
        c=strcmp(a,b);
        for in=1:max(size(c))
            if(c(in)==0 &amp; a(in)=='0')
                printf('%s''',var(2+in));
                printf('+');
                break;
             else
                 if(c(in)==0 &amp; a(in)=='1')
                     printf(var(2+in));
                     printf('+');
                     break;
                 end
             end
        end
   end
end
//4 cells
z1=ones(1,4);
z2=ones(4,1);
z3=ones(2,2);
temp1=['00' '01' '11' '10'];
temp2=temp1';
for t=1:n
        z=k(t,:,1);
        no=number_of(k(t,:,2),1);
        if(z==z1 &amp; no<cmn4) k(t,:,2)="z1;" a="strsplit(temp1(1,t));" for="" in="1:max(size(a))" if(a(in)="='0')" printf('%s''',var(in));="" end="" printf(var(in));="" printf("+");="" t="1:n" z="k(:,t,1);" no="number_of(k(:,t,2),1);" if(z="=z2" &="" no<cmn4)="" k(:,t,2)="z2;" printf('%s''',var(2+in));="" printf(var(2+in));="" i="1:n" j="1:n" if(i="=n)" t1="1;" else="" if(j="=n)" t2="1;" z4="[k(i,j,1)" k(i,t2,1);k(t1,j,1)="" k(t1,t2,1)];="" z5="[k(i,j,2)" k(i,t2,2);k(t1,j,2)="" k(t1,t2,2)];="" if(z4="=z3" k(i,j,2)="1;" k(i,t2,2)="1;" k(t1,j,2)="1;" k(t1,t2,2)="1;" b="strsplit(temp2(t1,1));" c="strcmp(a,b);" if(c(in)="=0" a(in)="='0')" 2="" cells="" z6="[1" 1];="" z7="z6';" z8="[k(i,j,1)" k(i,t2,1)];="" z9="[k(i,j,2)" k(i,t2,2)];="" no1="number_of(z9,1);" if(z8="=z6" no1<cmn2="" i+j~="2)" printf(p1(1,i));="" z10="[k(i,j,1);k(t1,j,1)];" z11="[k(i,j,2);k(t1,j,2)];" no2="number_of(z11,1);" if(z10="=z7" no2<cmn2)="" printf(p2(j,1));="" single="" cell="" if(k(i,j,2)="=0" k(i,j,1)="=1)" if(a(in,1)="='1')" printf(var(in+2));="" if(b(in,1)="='1')" if(i~="4" j~="4)" printf("0");<="" div=""></cmn4)>