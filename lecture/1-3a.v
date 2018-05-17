Variables A B C : Prop.

Lemma or_commutative : A \/ B -> B \/ A.

tauto.

Qed.

Print or_commutative.

Lemma distr_and : A -> B /\ C -> (A -> B) /\ (A -> C).

tauto.

Qed.

Lemma Peirce : ((A -> B) -> A) -> A.

try tauto.

(*tauto.*)


Lemma NNPeirce : ~ ~ (((A -> B) -> A) -> A).