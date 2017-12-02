---- MODULE MC ----
EXTENDS QUIZ6, TLC

\* CONSTANT definitions @modelParameterConstants:0FI
const_1512175040805224000 == 
{"r1", "r2", "r3"}
----

\* INIT definition @modelBehaviorInit:0
init_1512175040806225000 ==
TCInit
----
\* NEXT definition @modelBehaviorNext:0
next_1512175040806226000 ==
TCNext
----
\* INVARIANT definition @modelCorrectnessInvariants:0
inv_1512175040806227000 ==
TypeOK
----
=============================================================================
\* Modification History
\* Created Fri Dec 01 19:37:20 EST 2017 by adithyamorampudi
