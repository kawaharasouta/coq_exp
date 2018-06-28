Section Predicate_Calculus.

Variables P Q : nat -> Prop.
Variable R : nat -> nat -> Prop.

Lemma PQR : forall x y:nat, (R x x -> P x -> Q x) -> P x -> R x y -> Q x.

intros.
generalize H0.

(*assert (R x x).
auto.*)
enough (R x x).
(* by auto.*)
auto.
(*apply H.*)

Abort.
