Section Predicate_calculus.
Variable D : Set.
Variable R : D -> D -> Prop.

Section R_sym_trans.
Hypothesis R_symmetric : forall x y : D, R x y -> R y x.
Hypothesis R_transitive : forall x y z : D, R x y -> R y z -> R x z.


Lemma refl_if : forall x : D, (exists y, R x y) -> R x x.

Check ex.

intro x.
intro x_Rlinked.

(*intro y.*)

elim x_Rlinked.

intro y.
intro Rxy.

apply R_transitive with y.

assumption.

apply R_symmetric.
assumption.

Qed.

End R_sym_trans.