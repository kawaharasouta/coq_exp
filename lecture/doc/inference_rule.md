# 推論規則一覧 (List of Inference Rule)

## ->
### Elimination

```
P ト P -> Q
-----------
     Q 
```

### Introduction

```
P ト Q
------
P -> Q
```

## ∧
### Elimination 

```
P ∧ Q       P ∧ Q
-----      -------
  P           Q
```

### Introduction

```
P    Q
------
P ∧ Q
```

## ∨
### Introduction

```
  P          Q
------     ------
P ∨ Q      P ∨ Q
```

### Elimination

```
P Q ト P ∨ Q  P -> R  Q -> R
----------------------------
             R
```