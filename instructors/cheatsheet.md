# Chapters

## Basics
- Introduction
- Enumerated Types
    + Days of the Week
    + Booleans
    + Function Types
    + Numbers
- Proof by Simplification
- Proof by Rewriting
- Proof by Case Analysis
- More Exercises
- More on Notation (Advanced)

## Induction
- Naming Cases
- Proof by Induction
- Proofs within Proofs
- More Exercises
- Formal vs. Informal Proof (Advanced)

## Lists
- Pairs of Numbers
- Lists of Numbers
    + Bags via Lists
- Reasoning about Lists
    + Micro-Sermon
    + Induction on Lists
    + SearchAbout
- Options
- Dictionaries

\newpage

## Poly
- Polymorphism
    + Polymorphic Lists
        * Type Annotation Inference
        * Type Argument Synthesis
        * Implicit Arguments
    + Polymorphic Pairs
    + Polymorphic Options
- Functions as Data
    + Higher-Order Functions
    + Partial Application
    + Digression: Currying
    + Filter
    + Anonymous Functions
    + Map
    + Map for options
    + Fold
    + Functions for Constructing Functions
- The unfold Tactic
- Additional Exercises

## MoreCoq
- The apply Tactic
- The apply ... with ... Tactic
- The inversion Tactic
- Using Tactics on Hypotheses
- Varying the Induction Hypothesis
- Using destruct on Compound Expressions
- Review
- Additional Exercises

\newpage

# Progression

| Tactic               | Chapter   | Line |
|:---------------------|:----------|-----:|
| reflexivity          | Basics    |  141 |
| simpl                | Basics    |  141 |
| intros               | Basics    |  649 |
| rewrite              | Basics    |  709 |
| admit                | Basics    |  741 |
| destruct (var)       | Basics    |  805 |
| induction            | Induction |  194 |
| assert               | Induction |  312 |
| replace              | Induction |  564 |
| unfold               | Poly      | 1072 |
| fold                 | Poly      | 1110 |
| apply                | MoreCoq   |   39 |
| symmetry             | MoreCoq   |   97 |
| apply with           | MoreCoq   |  165 |
| inversion            | MoreCoq   |  217 |
| .. in ..             | MoreCoq   |  339 |
| generalize dependent | MoreCoq   |  602 |
| destruct (expr)      | MoreCoq   |  848 |
| destruct (eqn:)      | MoreCoq   |  946 |

| Syntax      | Chapter   | Line |
|:------------|:----------|-----:|
| Inductive   | Basics    |   70 |
| Definition  | Basics    |   86 |
| match       | Basics    |   87 |
| Eval        | Basics    |  108 |
| Example     | Basics    |  131 |
| Proof / Qed | Basics    |  141 |
| Check       | Basics    |  284 |
| Fixpoint    | Basics    |  412 |
| Notation    | Basics    |  519 |
| Theorem     | Basics    |  625 |
| Admitted    | Basics    |  741 |
| Case        | Induction |   29 |
| SearchAbout | Lists     |  726 |
| if          | Lists     | 1002 |
| Argument    | Poly      |  284 |

\newpage

# Alphabetical

| Tactic               | Chapter   | Line |
|:---------------------|:----------|-----:|
| admit                | Basics    |  741 |
| apply                | MoreCoq   |   39 |
| apply with           | MoreCoq   |  165 |
| assert               | Induction |  312 |
| destruct (var)       | Basics    |  805 |
| destruct (expr)      | MoreCoq   |  848 |
| destruct (eqn:)      | MoreCoq   |  946 |
| fold                 | Poly      | 1110 |
| generalize dependent | MoreCoq   |  602 |
| .. in ..             | MoreCoq   |  339 |
| induction            | Induction |  194 |
| intros               | Basics    |  649 |
| inversion            | MoreCoq   |  217 |
| reflexivity          | Basics    |  141 |
| replace              | Induction |  564 |
| rewrite              | Basics    |  709 |
| simpl                | Basics    |  141 |
| symmetry             | MoreCoq   |   97 |
| unfold               | Poly      | 1072 |

| Syntax      | Chapter   | Line |
|:------------|:----------|-----:|
| Admitted    | Basics    |  741 |
| Argument    | Poly      |  284 |
| Case        | Induction |   29 |
| Check       | Basics    |  284 |
| Definition  | Basics    |   86 |
| Eval        | Basics    |  108 |
| Example     | Basics    |  131 |
| Fixpoint    | Basics    |  412 |
| if          | Lists     | 1002 |
| Inductive   | Basics    |   70 |
| match       | Basics    |   87 |
| Notation    | Basics    |  519 |
| Proof / Qed | Basics    |  141 |
| SearchAbout | Lists     |  726 |
| Theorem     | Basics    |  625 |

