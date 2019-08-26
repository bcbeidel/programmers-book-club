# Matrix Transformations

## Transformations

Consider a matrix as a representation of a linear transformation.  Take the following examples as linear transformations of 2 dimensional vectors spanned by the described by the standard basis vectors u = (0, 1) and v = (1, 0).

## Transformation: Identity

A matrix that is just composed of the basis vectors, does not change a vector when applied to it.

```
[ x ][ 1  0 ]   [ x ]
[ y ][ 0  1 ] = [ y ]
```

## Transformation: Scaling

Take the existing axis, extend them out a specified number of units.  For example, the following matrix scales the x axis 3 units and the y axis 2 units

```
[ x ][ 3  0 ]   [ 3x ]
[ y ][ 0  2 ] = [ 2y ]
```

## Transformation: Inversion

Flip an axis, this matrix flips the -x axis to the left, scales 2y

```
[ x ] [ -1  0 ]   [ -x ]
[ y ] [  0  2 ] = [ 2y ]

# Or invert both
[ x ][ -1  0 ]   [ -x ]
[ y ][  0 -1 ] = [ -y ]

# Invert over a line at 45 degrees
[ x ][ 0  1 ]   [ y ]
[ y ][ 1  0 ] = [ x ]
```

## Transformation: Shears

Think taking the unit rectangle to a parallelogram

```
[ x ][ 1  1 ]   [x + y]
[ y ][ 0  1 ] = [ y ]
```

## Transformation: Rotation

```
# 90 degree rotation, anti-clockwise
[ x ][ 0  -1 ] = [ -y ]
[ y ][ 1  0 ]  = [ x  ]
```

## Combinations of Transformations

Order matters...

##

Matrix Multiplication

[ 3 ]
[ 2 ]