# Chapter 4: Naive Bayes and Sentiment Classification

## Text Classification

- **text categorization** - the task of assigning a label or text categorization category to an entire text or document

- **sentiment** - the positive or negative orientation that a writer expresses toward some object
    - In its simplest form it is a binary classification task, is a section of text positive or negative.

- **spam detection** - text classification task, i.e., label `SPAM` and `NOT-SPAM`

- **language identification** - what language is the text written in?

- **authorship attribution** - Who is the author of the text?

Another example might include the assignment of library category for a text? i.e., What subject does a text focus on?  All of these tasks can be done with fragile, 'hand-written' rules, or more dynamically with supervised machine learning.

## Types of Classifiers

- **generative classifiers** - learns the joint probability distribution p(x,y). It predicts the conditional probability with the help of Bayes Theorem

    - Assume some functional form for P(Y), P(X|Y)
    - Estimate parameters of P(X|Y), P(Y) directly from training data
    - Use Bayes rule to calculate P(Y |X)

- **discriminative classifiers** - model ‌learns the conditional probability distribution p(y|x)

    - Assume some functional form for P(Y|X)
    - Estimate parameters of P(Y|X) directly from training data

## 4.1 Naive Bayes Classifiers

### multinomial naive Bayes classifier

A Bayesian classifier that makes simplifying (naive) assumptions of how features interact.  These simplifying assumptions include assuming the document is a **bag-of-words** with a **naive Bayes Assumption**

- **bag-of-words** - an unordered set of words with their position ignored, keeping only their frequency in the document
- **naive Bayes assumption** - the conditional independency assumption of the probabilities _P(f<sub>i</sub>|c)_.
    - In other words, for each feature f<sub>1</sub>, f<sub>2</sub>, f<sub>3</sub>, ..., f<sub>n</sub> the conditional probability of a given feature _f_ given a class _c_ the conditional probability of _P(f<sub>1</sub>|c)_ is independent of _P(f<sub>2</sub>|c)_, _P(f<sub>3</sub>|c)_ through _P(f<sub>n</sub>|c)_


## 4.2 Training the Naive Bayes Classifier

Assuming that a feature _f_ is the existence of a word in a bag-of-words, we can use the frequencies of word occurrence to estimate our _P(f|c)_.  To do that we need to consider:

- w<sub>i</sub> is our feature that we care about (i.e., it represents the presence of a word).
- c is the concatenation of all documents in the corpus that match the label we care about (not the full corpus)

> P(w<sub>i</sub>|c) = count(w<sub>i</sub>, c) / Σ count(w, c)

For instance, if we were trying to estimate the likelihood of the word "fantastic" given that the document is classified as _positive_.  Our formula would look something like the following:

> P("fantastic" | positive) = count("fantastic", positive) / Σ count(ω, positive)) 

Or in words.  The probability maximum  likelihood estimate of the word "fantastic" occurring in a document, given that the document is labeled as positive is equal to the total count of occurance for the word "fantastic" in all documents labeled as _positive_ divided by to total number words in all documents labeled _positive_.

With Laplace smoothing:

> P("fantastic" | positive) = </p>
> (count("fantastic", positive) + 1 ) / </p> 
> Σ count(ω, positive) + |V|)

- **stop words:** words like _a_ or _the_ that are so common that some algorithms choose to ignore them, rather than calculate probabilities.  Include articles, filler words, or other 'spacers'

### Training a Naive Bayes Classifier

```text
function train_naive_bayes(D, 
                           C)
                           returns log P(c) 
                                   log P (w|c)

    for each class c ∈ C           # Calculates P(c) terms
        N-doc = number of documents in D
        N-c   = number of documents in D in class C

        logprior[c] <- log ( N-c / N-doc )

        V <- Vocabulary of D

        bigdoc[c] <- append(d) for d ∈ D with class c
        
        # Calculate P(w|c)
        for each word w in V         
            count(w, c) <- # number of occurrences of w in bigdoc[c]
            loglikelihood[w,c] <- log (
                (count(w, c) + 1) /
                (Σw′ in V (count (w′,c) + 1))
            )

    return logprior, loglikelihood, V

function test_naive_bayes(testdoc, 
                         logprior, 
                         loglikelihood, 
                         C, 
                         V) returns best c

    for each class c ∈ C 
        sum[c] <- logprior[c]
        for each position i in testdoc
            word <- testdoc[i]

            # Only handle known words, drop unknown words
            if word ∈ V
                sum[c] <- sum[c] + loglikelihood[word,c]
    return argmax sum[c]

```

### 4.3 Worked Example

#### Training

| Category | Document                              |
| ---------| ------------------------------------- |
| negative | just plain boring                     |
| negative | entirely predictable and lacks energy |
| negative | no surprises and very few laughs      |
| positive | very powerful                         |
| positive | the most fun film of the summer       |

#### Test

| Category | Document                              |
| ---------| ------------------------------------- |
|     ?    | predictable with no fun               |


"with" does not exist in Vocabulary (V) for the training set, so we disregard and must calculate the probabilities of the remaining words.  Focusing on conditional probabilities of the remaining words and using Laplace Smoothing.

```
# Identify Priors
P(-) = 3/5
P(+) = 2/5

|V| = 20
V[positive] = 9
V[negative] = 14 

n1 = P("predictable" | negative) = 1 + 1 / (14 + 20)
n2 = P("no"          | negative) = 1 + 1 / (14 + 20)
n3 = P("fun"         | negative) = 0 + 1 / (14 + 20)

p1 = P("predictable" | positive) = 0 + 1 / (9 + 20)
p2 = P("no"          | positive) = 0 + 1 / (9 + 20)
p3 = P("fun"         | positive) = 1 + 1 / (9 + 20)

P(-)P(S|-) = P(-) * n1 * n2 * n3
# 6.1 * 10^-5
P(+)P(S|+) = P(+) * p1 * p2 * p3
# 3.2 * 10^-5

## Test doc is classified as negative
```

## 4.4 Optimizing for Sentiment Analysis