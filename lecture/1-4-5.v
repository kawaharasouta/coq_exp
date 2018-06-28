Section F.

Variable f : nat -> nat.
Hypothesis foo : f 0 = 0.

Lemma L1 : forall k:nat, k = 0 -> f k = k.

intro k.
intro E.

rewrite E.

apply foo.

Qed.


Hypothesis f10 : f 1 = f 0.

Lemma L2 : f (f 1) = 0.

replace (f 1) with 0.

apply foo.

(*transitivity (f 0); symmetry; trivial.*)

transitivity (f 0).
symmetry.
trivial.

symmetry.
apply f10.

(*apply foo.
symmetry.
apply f10.*)

Qed.