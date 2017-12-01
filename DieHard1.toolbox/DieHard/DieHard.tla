------------------------------ MODULE DieHard ------------------------------
EXTENDS Integers




VARIABLES big, small

TypeOK == /\ big \in 0 ..5
          /\ small \in 0 .. 3


Init == /\ big = 0
        /\ small = 0

FillSmall == /\ small' = 3
             /\ big' = big
        
FillBig == /\ big' = 5
           /\ small' = small 
          
EmptySmall == /\ small' = 0
              /\ big' = big
             
EmptyBig == /\ big' = 0
            /\ small' = small
            
MIN(m , n) == IF m < n THEN m ELSE n
            
SmallToBig == 
LET poured == MIN(big + small, 5) - big
IN            /\ big' = big + poured
              /\ small' = small - poured
              
BigToSmall == 
LET poured == MIN(big + small, 3) - small
IN            /\ small' = small + poured
              /\ big' = big - poured  
        
Next == \/ FillSmall
        \/ FillBig
        \/ EmptySmall
        \/ EmptyBig
        \/ SmallToBig
        \/ BigToSmall
        

=============================================================================
\* Modification History
\* Last modified Fri Dec 01 00:29:47 EST 2017 by adithyamorampudi
\* Created Thu Nov 30 23:49:29 EST 2017 by adithyamorampudi
