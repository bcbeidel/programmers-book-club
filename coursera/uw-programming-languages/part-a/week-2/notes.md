---
layout: notes
title:  Programming Languages, Week 2
subtitle: Coursera Course Notes
url: https://www.coursera.org/learn/programming-languages
categories: programming fundamentals programming-languages 
---

> An ML program is a sequence of _bindings_. Each binding gets _type-checked_ and then (assuming it type-checks) evaluated. What type (if any) a binding has depends on a _static environment_, which is roughly the types of the preceding bindings in the file. How a binding is evaluated depends on a _dynamic environment_, which is roughly the values of the preceding bindings in the file. When we just say environment, we usually mean dynamic environment. Sometimes _context_ is used as a synonym for _static environment_.


## Bindings

Many types of bindings, first consider a `variable binding`

```sml
val x = e
```

`val` is a keyword, `x` is any variable, `e` can be any expression.

A `value` is an an expression that "has no computation to do," i.e., there i sno way to simplify it.  `34` is a value, `5 * 12` is not.

All `values` are `expressions` not all expressions are

## Expressions

Some example expressions, and how they interact in the workflow:

- Integer Constants
    - syntax: sequence of digits
    - type-check: type `int` in static environment
    - evaluation: evaluates to itself in dynamic environment
- Addition
    - syntax: `e1+e2` where `e1` and `e2` are expressions
    - type-checking: type int but only if `e1` and `e2` are both type `int` in the same static environment, else does not complete `type-check`
    - evaluation: `e1` to `v1` and `e2` to `v2` in the same dynamic environment then produce the sum of `v1` and `v2`
- Variables
    - syntax: sequence of letters, underscores, etc.
    - type checking: look up variable in the current static environment and use that type
    - evaluation: look of variable in current dynamic environment, then use that value
- Conditionals
    - syntax: `if e then e2 else e3` where `e1`, `e2`, and `e3` are expressions
    - type checking: only type-checks if `e1` is bool, and `e2` and `e3` are the same type.  The type of the whole expression is the same as `e2` and `e3`.
    - evaluation: evaluate `e1` in dynamic environment, if evaluates to true then the whole expression evaluates to `e2` under the current dynamic environment if it evaluates to `false` then the expression evaluates to `e3` under the current dynamic environment
- Boolean Constants
    - syntax: either `true` or `false`
    - type checking: type `bool` in any static environment
    - evaluation: to itself (it is a value)
- Less-Than Comparison
    - syntax: `e1 < e2` where `e1` and `e2` are expressions
    - type checking: type bool, iff `e1` and `e2` are both of type `int` in the same static environment, else does not type check
    - evaluation: evaluate `e1` to `v1` and `e2` to `v2` in the same dynamic environment.  Then if `v1` is less than `v2` produce `true` else produce `false`.

> Whenever you learn a new construct in a programming language, you should ask these three questions: 
>    - What is the syntax? 
>    - What are the type-checking rules? 
>    - What are the evaluation rules?

## Variables are Immutable

Binding are immutable (i.e., cannot be changed).  Consider the expression;

```sml
val = 8 + 9;
```

It produces a dynamic environment where `x` maps to 17.  In this environment `x` will always map to `17`; there is no "assignment statement" in ml changing what `x` maps to.  

However, you can have another, later binding such as `val x = 30;` that creates a different dynamic environment, where the earlier binding is `shadowed` by the new one.  It could be restated that the second binding `masks` the first one.

## Key Terms

- **syntax** "how to write it" | grammatical structures | i.e., how notation is arranged

- **semantics** "how it type-checks and evaluates" | refers to the meaning of the vocabulary symbols arranged with that structure | i.e., what does the expression(s) actually intend to convey

- **variable shadowing** occurs when a variable declared within a certain scope (decision block, method, or inner class) has the same name as a variable declared in an outer scope. At the level of identifiers (names, rather than variables), this is known as name masking. This outer variable is said to be shadowed by the inner variable, while the inner identifier is said to mask the outer identifier. This can lead to confusion, as it may be unclear which variable subsequent uses of the shadowed variable name refer to, which depends on the name resolution rules of the language.