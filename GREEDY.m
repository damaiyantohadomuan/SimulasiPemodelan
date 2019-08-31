%=======================ALGORITMA GREEDY =======================

DATA = [];
jarak = 0;
start=1;
jalur =[start];
totalperjalanan=0;
jaluraktif=[];
rute= [
        1	2	4.1
        1	3	3.2
        2   3   3.7
        2	4	2.2
        2	6	8.1
        3   2   3.3
        3	4	7.3
        4	5	4.6
        5	6	2.4
        6	7	2.5
        6	8	3.4
        7	8	1.9
        7	9	3.4
        8	9	2.5
        9	10	3.6
        10	11	3.2
        10	12	5.2
        11  12  1.9
                    ]; 



for (i=2:12)
   counter=1;
   %===============CEK JALUR yang terhubung=================
   jaluraktif=[];
   for (j=1:18)      
   
       if (rute(j,1)==start )
            jaluraktif(counter,1) =  rute(j,2);
            jaluraktif(counter,2) =  rute(j,3);     
            counter=counter+1;
       end;
   end; 
      %==============CEK JALUR yang minimal jaraknya ===============
   min= 10000;
   for(k=1:counter-1)
       if (jaluraktif(k,2)<min)
           nextfix = jaluraktif(k,1);
           jarak = jaluraktif(k,2);
           min=jarak;        
       end;
   end;
        jalur(1,i) = nextfix;
        totalperjalanan=totalperjalanan+jarak;
        start = nextfix; 
    %============================================ 
end;
disp('JALUR BY GREEDY');
disp(jalur);
fprintf('Jarak : %d ',totalperjalanan);
   


   