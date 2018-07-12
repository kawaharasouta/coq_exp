Inductive bool : Set := true | false.

Check bool_rect.
Check bool_rec.
Check bool_ind.

Lemma duality : forall b:bool, b = true \/ b = false.

intro b.

elim b.
left.
trivial.
right.
trivial.

(*destruct b.
auto.
auto.*)

Qed.



Inductive nat : Set := | O : nat | S : nat -> nat.

Check nat_ind.
Check nat_rec.
Check nat_rect.

(*Definition prim_rec := nat_rec (fun i : nat => nat).
About prim_rec.*)

Definition prim_rec := Eval compute in nat_rec (fun i : nat => nat).
About prim_rec.

Definition addition (n m:nat) := prim_rec m (fun p rec : nat => S rec) n.


Eval compute in (addition (S O) (S O)).
