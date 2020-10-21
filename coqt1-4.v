Section Minimal_Logic.
Variables A B C : Prop.

Lemma or_commutative : A \/ B -> B \/ A.

tauto.

Qed.

Print or_commutative.

Lemma distr_and : A -> B /\ C -> (A -> B) /\ (A -> C).

tauto.

Qed.

(*Lemma Peirce : ((A -> B) -> A) -> A.

try tauto.*)

(*tauto.*)


Lemma NNPeirce : ~ ~ (((A -> B) -> A) -> A).

tauto.

Qed.

Require Import Classical.

Check NNPP.

Lemma Peirce : ((A -> B) -> A) -> A.

apply NNPP.

tauto.

Qed.

Section club.

Variables Scottish RedSocks WearKilt Married GoOutSunday : Prop.

Hypothesis rule1 : ~ Scottish -> RedSocks.
Hypothesis rule2 : WearKilt \/ ~ RedSocks.
Hypothesis rule3 : Married -> ~ GoOutSunday.
Hypothesis rule4 : GoOutSunday <-> Scottish.
Hypothesis rule5 : WearKilt -> Scottish /\ Married.
Hypothesis rule6 : Scottish -> WearKilt.

Lemma NoMember : False.

tauto.

Qed.

End club.

Check NoMember.