---
layout: notes
title: Getting Started With Go
subtitle: Coursera Notes - Week 1
date: 2019.04.13
author: Brandon Beidel
course: https://www.coursera.org/learn/golang-getting-started
---

## RTFM

- A tour of Go
    - https://tour.golang.org/welcome/1
- Effective Go
    - https://golang.org/doc/effective_go.html


## 1.1 Why Should I learn Go?

- Advantages
    1. Code runs fast
    2. Garbage Collection
    3. Simpler Object
    4. Concurrency is native and efficient

### Software Translation

- __Machine Language__
    - CPU instructions, represented in binary (lowest level)
- __Assembly Language__
    - CPU instructions with mnemonics
    - easer to read
    - equivalent to machine language
- __High-level language__
    - commonly used languages (C, C++, Java, Go, R, etc.)
    - easier to use

All software must be translated into machine language of processor.

### Translation: Compiled vs. Interpreted

- Compilation: Translate instructions once before running code
    - C, C++, Java (partially)
    - Translation occurs only once, saves time

- Interpretation: Translate instructions while code is executed
    - Python, R, Java (Partially)
    - Translation occurs every execution
    - Requires an interpreter

### Efficiency v. Ease-of-Use

- Compiled code is fast
- Interpreters make coding easier
    - manage memory automatically
    - infer variable types
- Go is a compromise:
    - Compiled Language
    - With Garbage Collection

### Garbage Collection

- Automatic Memory Management
    - Where should memory be allocated?
    - When can memory be de-allocated?
- Manual memory management is hard
    - de-allocate too early, false memory accesses
    - de-allocate too late, wasted memory

## 1.2 Object-Oriented Programming

- Organize your code through encapsulation
- Group together data and functions which are related
- User-defined type which is specific to an application
- allows creation of types specific to the domain
- classes have data and functions

### Objects in Go

- `go` does not use the term class
- `go` uses `structs` with associated methods
- simplified implementations of classes
    - no inheritance
    - no constructors
    - no generics
- easier to code

`golang` uses the term `struct`, structs have data and functions

## 1.3 Concurrency in Go

### Performance limitations of computers

Moore's law, used to keep up with performance
- Number of transistors on a chip, doubles every 18 months.  This has slowed.  
- More transistors lead to higher clock frequencies
- Power and temperature constraints limit clock frequencies now, run it too hot, it will melt the equipment

### Parallelism

- Number of cores increases over time
- Multiple tasks may be performed at the same time

Difficulties
- When does a task start/stop?
- What if there are dependencies in tasks?
- Do tasks conflict in memory?

### Concurrent Programming

- Concurrency is the management of multiple tasks at the same time
- Key requirement in big systems
- Concurrent programming enables parallelism
    - manage task execution
    - communication between tasks
    - synchronization between tasks

### Concurrency in Go

- Go includes concurrency focused primitives
- `Goroutines` represent concurrent tasks
- `Channels` are used to communicate between tasks
- `Select` enables tasks synchronization
- Concurrency primitives are efficient, and can be easy to use

## 1.2.1 Installing Go

golang.org

## 1.2.2 Workspaces & Packages

### Workspaces

- Hierarchy of directories
- Common organization is good for sharing
- Three subdirectories
    - `src` -> Contains source code files
    - `pkg` -> Contains package (libraries)
    - `bin` -> contains executable
- Recommended hierarchy not enforced
- Workspace is defined by `GOPATH` environment variable

### Packages

- First line of file names package
- `import` is how they are connected
- one package called `main`
- build the main package generated an executable program
- main needs to have a main() function

```go
package main
import "fmt"
func main() {
    fmt.Printf("hello, world\n")
}
```

## 1.2.3 Go Tool

Commands to know...

```
go build
go doc
go fmt
go get
go list
go run
go test
go help
```
## 1.3.1 Variables

- case sensitive
- don't use keywords if, case, package, ...
- data stored in memory
- must have `name` and `type`
- all must have declaration
    - most basic 
        - `var x int`
    - multiple per line
        - `var x, y int`

Variable types

- int
- float
- strings

## 1.3.2 Variable Initialization

### Type Declarations

- you can define an alias for a type
- can provide clarity

```
type Celsius float64
type IDnum int
```

### Initializing

- Initialize in declaration
    - type inference if you don't provide value

``` go
var x int = 100
var x = 100
```

- Initialize after declaration

``` go
var x int
x = 100
```

Note: Uninitialized default to 0

- Short variable declartion `:=`
- can only occur inside a function
- variable is declared as type on right hand side

```
x := 100
```