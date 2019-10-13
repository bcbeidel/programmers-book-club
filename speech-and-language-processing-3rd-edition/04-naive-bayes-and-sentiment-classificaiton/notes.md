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

### 4.4.1 Transform to Binary over Frequency

For sentiment classification, the presence of a word appears to be more important than the frequency. Simplification:

- **binary multi-nomial naive Bayes:** Remove all duplicate words prior to concatenation into a large document. i.e., only allow one count per individual document

### 4.4.2 Handle Negation

Simple version: during normalization prepend the prefix `NOT_` to every word after a token of a logical negation (n't, not, no, never) until the next punctuation mark.

> didnt like this movie, but I

becomes

> didnt NOT_like NOT_this NOT_movie , but I

### 4.4.3 Use Sentiment Leixcons

In cases where not enough labeled training data is available, the use of a pre-defined **sentiment lexicon** may help to determine sentiment

- **sentiment lexicon:** A lexical resource for sentiment analysis, also referred to as a Sentiment Lexicon, is a database of lexical units for a language along with their sentiment orientations. This can be expressed as a set of tuples of the form (lexical unit, sentiment)

Often, the usage is to create a feature for counts of positive and negative words in the lexicons, rather than for each individual word.

May help when training data is sparse or nor representative of test set.

## 4.5 Naive Bayes for other text classification tasks

### 4.5.1 Spam Detection

Predefined features can be used in addition to lexicon.

Sample features from `SpamAssassin`

- Email subject is in all capital letters
- Contains phrases of urgency like "urgent reply"
- Email subject line contains "online pharmaceutical"
- HTML has unbalanced "head" tags
- Claims you can be removed from list

### 4.5.2 Language Identification

For language detection, words aren't used but byte n-grams.  Spaces count as bytes.  Trained on multilingual text such as wikipedia.

## 4.6 Naive Bayes as a Language Model

NB classifier has strong similarities to uni-gram language model when

    - we only use the features of the words themselves
    - we use all the words in a text

If you take the case where the only features are the words themselves, NB classifier can be viewed on a set of class-specific uni-gram models.

## 4.7 Evaluation: Precision, Recall, F-measure

- **gold labels:** the 'true' labels from human assignment

- **contingency table:** (also known as a cross tabulation or crosstab) is a type of table in a matrix format that displays the (multivariate) frequency distribution of the variables. Confusion Matrix is a subtype of contingency table

- **precision:**  the percentage of the items that the system detected as positive that are in fact positive 

```
Precision = True Positive / (True Positive + False Positive)
```

- **recall:** the percentage of positive items detected by the system. (also called the true positive rate, sensitivity, or probability of detection in some fields)

```
Recall = True Positive / (True Positive + False Negative)
```

- **F-measure:** weighted harmonic mean of precision and recall. Where β parameter differentially weights the importance of recall and precision

> F<sub>β</sub> = ((β<sup>2</sup> + 1) * P * R) / (β<sup>2</sup> * P + R)

- **F-1 Statistic** F-measure where β is 1

> F<sub>1</sub> = (2 * P * R )/ (P + R)

## 4.7.1 More than two classes

- **multi-label classification (any-of):** a document may be assigned any number of available classes.  Each is determined by a per-class binary classifier

- **multi-nomial classification (one-of):** a document may only be assigned a single class.  A classifier is run for each class, the highest probability is the winner.

## 4.8 Test sets and Cross-validation

- **cross-validation:** we randomly choose a training and test set division of
our data, train our classifier, and then compute the error rate on the test set

## 4.9 Statistical Significance Testing

> In language processing we don’t generally use traditional statistical approaches like paired t-tests to compare system outputs because **most metrics are not normally distributed**, violating the assumptions of the tests. The standard approach to computing p-value(x) in natural language processing is to use non-parametric tests

- **null hypothesis:** the hypothesis that there is no significant difference between specified populations, any observed difference being due to sampling or experimental error.

Mechanisms for performing these non-parametric tests include **bootstrap tests**, and **approximate randomization**

- **bootstrapping:** repeatedly drawing large numbers of smaller samples with replacement 