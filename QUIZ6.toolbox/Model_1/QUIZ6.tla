------------------------------- MODULE QUIZ6 -------------------------------
CONSTANT FI 

VARIABLE fiState, message, mState
(***************************************************************************
Invariant to be checked
 ***************************************************************************)
TypeOK == /\ fiState \in [FI ->{"Register", "Sent", "Received"}]
          /\ message \in {"message", "encrypted", "decrypted"}
          /\ mState \in {"unsigned", "signed"} 
         

(***************************************************************************
This is the initial state of the system, all the FI's will register with 
The TIC before Communication, this registration is abstract, we are not
concerned with how it happens
 ***************************************************************************)    
TCInit == /\ fiState = [ r \in FI |-> "Register"]
          /\ message =  "message"
          /\ mState = "unsigned"  

send(r) == /\ fiState[r] = "Register"
           /\ fiState' = [fiState EXCEPT ![r] = "Sent"]
           /\ message = "message"
           /\ message' = "encrypted"
           /\ mState = "unsigned"
           /\ mState' = "signed"
           
           
           
receive(r) == /\ fiState[r] = "sent"
              /\ fiState' = [fiState EXCEPT ![r] = "Received"]
              
TCNext == \E r \in FI : send(r) \/ receive(r)
           
           



=============================================================================
\* Modification History
\* Last modified Fri Dec 01 19:37:16 EST 2017 by adithyamorampudi
\* Created Fri Dec 01 17:58:10 EST 2017 by adithyamorampudi
