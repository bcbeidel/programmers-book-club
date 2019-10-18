# Chapter 4. Exercises

## 4.1 

Assume the following likelihoods for each word being part of a positive or negative movie review, and equal prior probabilities for each class.

|         | positive | negative | 
|---------|----------|----------|
| I       | 0.09     | 0.16     |
| always  | 0.07     | 0.06     |
| like    | 0.29     | 0.06     |
| foreign | 0.04     | 0.15     |
| films   | 0.08     | 0.11     |


```
log(P(-)) =  
        log(P(I|-)) + 
        log(P(always|-)) + 
        log(P(like|-)) + 
        log(P(foreign|-)) + 
        log(P(films|-))

log(P(-)) =  log(0.16) + log(0.06) + log(0.06) + log(0.15) + log(0.11)
log(P(-)) =  -11.56

log(P(+)) =
        log(P(I|+)) + 
        log(P(always|+)) + 
        log(P(like|+)) + 
        log(P(foreign|+)) + 
        log(P(films|+))

log(P(+)) =  log(0.09) + log(0.07) + log(0.29) + log(0.04) + log(0.11)
log(P(+)) =  -11.73

The sentence would be labeled as negative, since log(P(-)) > log(P(+))
```