---------------------------- MODULE OneBitClock ----------------------------
VARIABLE  b
TypeOK == b\in {0,1}
Init1 == (b = 0) \/ (b = 1)

Next1 == \/ /\ b = 0
            /\ b' = 1
         \/ /\ b = 1
            /\ b' = 0

=============================================================================
\* Modification History
\* Last modified Thu Nov 30 20:06:53 EST 2017 by adithyamorampudi
\* Created Thu Nov 30 19:02:27 EST 2017 by adithyamorampudi
\*This is a simple one bit clock implementation
