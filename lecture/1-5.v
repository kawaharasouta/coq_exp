(*Section Univ.
*)

Variable U : Type.

Definition set := U -> Prop.
Definition element (x : U) (S : set) := S x.
Definition subset (A B : set) := forall x : U, element x A -> element x B.

Definition transitive (T : Type) (R : T -> T -> Prop) := forall x y z : T, R x y -> R y z -> R x z.

Lemma subset_transitive : transitive set subset.

