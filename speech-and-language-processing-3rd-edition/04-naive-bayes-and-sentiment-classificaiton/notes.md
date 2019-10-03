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

> `P(w<sub>i</sub>|c) = count(w<sub>i</sub>, c) / Σ count(w, c)
> 4.12

