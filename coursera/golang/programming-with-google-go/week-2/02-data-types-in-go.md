---
layout: notes
title: Data Types in Go
subtitle: Coursera Notes - Week 2
date: 2019.04.19
author: Brandon Beidel
course: https://www.coursera.org/learn/golang-getting-started
---

## 2.1.1 Pointers

Pointer - An address to some data in memory

`&` operator - returns address of a variable/funciotn

`*` operator - returns data at an address (dereferencing)

```
var x int = 1
var y int
var ip *int // ip is pointer to int

ip = &x     // ip now points to x
y  = *ip    // y is now 1
```

New 
- alternate way to create a variable
- `new()` function creates a variable and returns a pointer
- variable is initialized to zero

```
ptr := new(int)
*ptr = 3
```

## 2.1.2 Variable Scoping

The place in the code where a variable can be accessed

### Blocks

- sequence of declarations and statements within matching brackets, {}
- includes function definition
- hierarchy of implicit blocks
    - universe block 
    - package block
    - file block
    - `if`, `for`, `switch`, all code inside statement
    - individual clauses in `switch` or `select`

#### Lexical Scoping

- `b-i` >= `b-j` if `b-j` is defined inside `b-i`
    - "defined inside" is transitive

```{go}
# b-1 File block
var x = 4

func f() {
    # b-2 function block
    fmt.Printf("%d, x)
}

func g() {
    # b-3 function block
    fmt.Printf("%d, x)
}
```

so....
- b-1 >= b-2
- b-1 >= b-3
but...
- b2 !>= b-3

Variable is accessible from block b-j if

1. variable is declared in block b-i
2. b-i >= b-j

## 2.1.3 De-allocating Space

Stack v. Heap

## 2.1.4 Garbage Collection

- It is difficult to determine when a variable is no longer used.
- Automatic tool that deals with deallocation... done by the interpreter
- Easy for the programmer
- slow (need an interpreter)

- Go is a compiled language which enables garbage collection
- Compiler determines stack v. heap
- Garbage collection in background

## 2.2.1 Comments, Printing, Integers

```{go}
// this is a comment
var x int // another comment

/* Block comments
   This is a still a comment */
```

### Printing

- Import from `fmt` package
- fmt.Printf()
    - prints a string
- Format strings
    - Conversion characters for each argument
```
fmt.Printf("Hi %s", x)
```

### Integers

- Generic int declaration
    - `var x int`
- Different lengths and signs
    - int8, int16, int32, int64, uint8, uint16, uint32, uint64
- Operators 
    - Arithmetic + - * / % << >>
    - Comparison == != < > >= >=
    - Boolean && ||


### 2.3.1 Constants

Expression who's value is known at compile time

```
const x = 1.3
const (
    y = 4
    z = "Hi"
)
```

### iota

- Generate a set of related but distinct constants
- Represents a property which has several distinct possible values
- (enumerator)

```{go}
type Grades int
const (
    A Grades = iota
    B
    C
    D
    F
)
```
