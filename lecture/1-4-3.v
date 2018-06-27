Section Predicate_calculus.
Variable D : Set.
Variable R : D -> D -> Prop.

Variable P : D -> Prop.
Variable d : D.


Lemma weird : (forall x:D, P x) -> exists a, P a.