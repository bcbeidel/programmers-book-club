---
layout: notes
title: Complex Data Types in Go
subtitle: Coursera Notes - Week 3
date: 2019.04.19
author: Brandon Beidel
---

# Complex data types

## Array 

Fixed Length series of chosen elements
- subscript notation []
- zero index
- elements initialized to zero value for type


```{golang}
# Initialize an array length 5
var x [5]int

# Set the first element to value 2
x[0] = 2

# Print the second element, it will be 0, since it is unset
fmt.Printf(x[1])
```

### Array literal

i.e., initalize with specific values

```
var x [5]int = 5{1, 2, 3, 4, 5}
```
Length of literal must match size of array

Use ... to infer the size of array

```
x := [...]int{1, 2, 3, 4}
```

### Array Iteration

For loop with range keyword
```{go}
x :=  [3]int {1, 2, 3}

for i, v range x {
    fmt.Printf("ind %d, val %d", i, v)
}

```

### Slice

- "window" on an underlying array
- variable in size, up to the size of array

Properties
- Pointer - indicates start of slice
- Length - number of elements in slice
- Capacity - maximum number of elements

```{golang}
arr := [...]{"a", "b", "c", "d", "e", "f" "g"}

s1 := arr[1:3] # "b", "c", "d"
s2 := arr[2:6] #

len(s1) # length
cap(s1) # capacity

```
### Initalizing a slice

```
sli = make([]int, 10) # size 10, capacity 10

sli = make([]int, 10, 15) # size 10, capacity 15
```

### Append 
- can be used to increase the size of slice
- can be increased beyond the size of an array (with time penalty)

## Hash Tables

- Key value pairs
- each value associated with unique keys
- hash function used to compute slot for key

- Pro: Faster lookup than lists
- Pro: can have arbitrary keys (i.e., strings)

- Cons: Collisions....

## Map is golang's implemenation of hash table

``` {golang}
# Map with index of string, storing integers
var idMap map[string]int
idMap = make(map[string]int)

# Map literal
idMap := map[string]int { "joe" : 123 }

# reference a value
idMap["joe"] # return 123

idMap["jason"] # returns 0 if not there

# add a value
idMap["jane"] = 224

# delete a value
delete(idMap, "joe")
```


### map: two value assignment

```{golang}
id, p := idMap["joe"]
```
- `id` is value
- `p` is presence of value

### map: 

```{golang}
for key, val := range idMap {
    fmt.Println(key, val)
}
```
