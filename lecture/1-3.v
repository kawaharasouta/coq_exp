Variables A B C : Prop.

Lemma and_commutative : A /\ B -> B /\ A.

intro H.

elim H.

split.

apply H1.

apply H0.

Qed.

Check conj.


Lemma or_commutative : A \/ B -> B \/ A.

intro H.

elim H.

intro HA.

clear H.

right.

apply HA.

intro HA.

clear H.

left.

apply HA.
